import edit_distance
ref = [1, 2, 3, 4]
# hyp = [1, 2, 4, 5, 6]
hyp = [1, 2, 3, 5]
sm = edit_distance.SequenceMatcher(a=ref, b=hyp)
print(sm.get_opcodes())
print(sm.ratio())
print(sm.get_matching_blocks())