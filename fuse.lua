local config = SMODS.current_mod.config
if config.allow_to_fuse_jokers == true then
    FusionJokers.fusions:register_fusion{
        jokers = {
            --First component Joker; all values except "name" optional
                    { name = "j_fe_key", carry_stat = "stat_to_carry", merge_stat = "stat_to_merge" },
            --       String, key of component 1      String, name of stat          String, name of stat
            --                                               to carry over                 to merge                                  
                    { name = "j_modprefix_key", carry_stat = "stat_to_carry", merge_stat = "stat_to_merge" },
            --Second component Joker; same values.
            --This works for arbitrary numbers of additional Jokers
            --if you want to do the Exodia thing.
        },
        result_joker = "j_modprefix_key", --String, key of result Joker
        cost = number,                    --Number, cost in $ to fuse this recipe
        requirement = func,               --Optional function; fusion can only be carried out if this function returns `true`.
        merged_stat = "stat",             --Optional string, name of stat that contains "merge_stat"s above
        aftermath = func,                 --Optional function; will be run after the fusion is complete.
    }
end