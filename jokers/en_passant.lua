FusionJokers.fusions:register_fusion{
  jokers = {
		{ name = "j_modprefix_key", carry_stat = "stat_to_carry", merge_stat = "stat_to_merge" },
        { name = "j_modprefix_key", carry_stat = "stat_to_carry", merge_stat = "stat_to_merge" },
  },
  result_joker = "j_modprefix_key", --String, key of result Joker
  cost = number,                    --Number, cost in $ to fuse this recipe
  requirement = func,               --Optional function; fusion can only be carried out if this function returns `true`.
  merged_stat = "stat",             --Optional string, name of stat that contains "merge_stat"s above
  aftermath = func,                 --Optional function; will be run after the fusion is complete.
}