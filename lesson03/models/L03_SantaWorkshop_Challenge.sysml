package L03_SantaWorkshop_Challenge {
        private import ScalarValues::*;

        enum def SkillType {
                enum assembly;
                enum quality;
                enum packaging;
                enum management;
                enum leadership;
        }

        attribute def Skill {
                attribute skillType : SkillType;
                attribute skillLevel : Real;
        }

        // Base part definition for all elves
        part def Elf {
                attribute skill : Skill [1..*];
        }

        // Specialized part definitions based on skill type
        part def AssemblyElf :> Elf {
                attribute :>> skill {
                        attribute :>> skillType = SkillType::assembly;
                }
        }

        part def QualityElf :> Elf {
                attribute :>> skill {
                        attribute :>> skillType = SkillType::quality;
                }
        }

        part def PackagingElf :> Elf {
                attribute :>> skill {
                        attribute :>> skillType = SkillType::packaging;
                }
        }

        part def HeadElf :> Elf {
        }

        part def SantaWorkshop {
                // Elves working in the workshop
                part headElf : HeadElf {
                        attribute assemblySkill : Skill :> skill {
                                attribute :>> skillType = SkillType::assembly;
                                attribute :>> skillLevel = 80.0;
                        }
                        attribute qualitySkill : Skill :> skill {
                                attribute :>> skillType = SkillType::quality;
                                attribute :>> skillLevel = 100.0;
                        }
                        attribute packagingSkill : Skill :> skill {
                                attribute :>> skillType = SkillType::packaging;
                                attribute :>> skillLevel = 50.0;
                        }
                        attribute managementSkill : Skill :> skill {
                                attribute :>> skillType = SkillType::management;
                                attribute :>> skillLevel = 120.0;
                        }
                        attribute leadershipSkill : Skill :> skill {
                                attribute :>> skillType = SkillType::leadership;
                                attribute :>> skillLevel = 80.0;
                        }
                }

                // Work areas of the workshop
                part assemblyLine {
                        doc
                        /* Where toys are assembled. */
                        part supervisor = headElf;

                        // Assembly Elves
                        part albert : AssemblyElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 50.0;
                                }
                        }
                        part betty : AssemblyElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 100.0;
                                }
                        }
                        part george : AssemblyElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 150.0;
                                }
                        }
                }

                part qualityControl {
                        doc
                        /* Quality checking station. */

                        // Quality Elves
                        part charlie : QualityElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 100.0;
                                }
                        }
                        part diana : QualityElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 100.0;
                                }
                        }
                        part helen : QualityElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 150.0;
                                }
                        }
                }

                part packagingArea {
                        doc
                        /* Gift wrapping and packaging. */

                        // Packaging Elves
                        part edward : PackagingElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 100.0;
                                }
                        }
                        part fiona : PackagingElf {
                                attribute :>> skill {
                                        attribute :>> skillLevel = 100.0;
                                }
                        }
                }
        }
}
