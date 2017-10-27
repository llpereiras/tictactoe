module AttackDefense

  def attack_or_defense(b)

    # Attack - try win
    return 0 if b[0] == 0 && b[1] == b[2]
    return 0 if b[0] == 0 && b[4] == b[8]
    return 0 if b[0] == 0 && b[3] == b[6]

    return 1 if b[1] == 1 && b[0] == b[2]
    return 1 if b[1] == 1 && b[4] == b[7]

    return 2 if b[2] == 2 && b[0] == b[1]
    return 2 if b[2] == 2 && b[4] == b[6]
    return 2 if b[2] == 2 && b[5] == b[8]

    return 3 if b[3] == 3 && b[0] == b[6]
    return 3 if b[3] == 3 && b[4] == b[5]
    
    return 4 if b[4] == 4 && b[0] == b[8]
    return 4 if b[4] == 4 && b[1] == b[7]
    return 4 if b[4] == 4 && b[2] == b[6]
    return 4 if b[4] == 4 && b[3] == b[5]

    return 5 if b[5] == 5 && b[2] == b[8]
    return 5 if b[5] == 5 && b[3] == b[4]

    return 6 if b[6] == 6 && b[0] == b[3]
    return 6 if b[6] == 6 && b[2] == b[4]
    return 6 if b[6] == 6 && b[7] == b[8]

    return 7 if b[7] == 7 && b[1] == b[4]
    return 7 if b[7] == 7 && b[6] == b[8]

    return 8 if b[8] == 8 && b[0] == b[4]
    return 8 if b[8] == 8 && b[2] == b[5]
    return 8 if b[8] == 8 && b[6] == b[7]

    # Defense - try don't lose.
    return 0 if b[0] == 0 && b[1] == b[2]
    return 0 if b[0] == 0 && b[4] == b[8]
    return 0 if b[0] == 0 && b[3] == b[6]

    return 1 if b[1] == 1 && b[0] == b[2]
    return 1 if b[1] == 1 && b[4] == b[7]

    return 2 if b[2] == 2 && b[0] == b[1]
    return 2 if b[2] == 2 && b[4] == b[6]
    return 2 if b[2] == 2 && b[5] == b[8]

    return 3 if b[3] == 3 && b[0] == b[6]
    return 3 if b[3] == 3 && b[4] == b[5]
    
    return 4 if b[4] == 4 && b[0] == b[8]
    return 4 if b[4] == 4 && b[1] == b[7]
    return 4 if b[4] == 4 && b[2] == b[6]
    return 4 if b[4] == 4 && b[3] == b[5]
    
    return 5 if b[5] == 5 && b[2] == b[8]
    return 5 if b[5] == 5 && b[3] == b[4]

    return 6 if b[6] == 6 && b[0] == b[3]
    return 6 if b[6] == 6 && b[2] == b[4]
    return 6 if b[6] == 6 && b[7] == b[8]

    return 7 if b[7] == 7 && b[1] == b[4]
    return 7 if b[7] == 7 && b[6] == b[8]
    
    return 8 if b[8] == 8 && b[0] == b[4]
    return 8 if b[8] == 8 && b[2] == b[5]
    return 8 if b[8] == 8 && b[6] == b[7]

    return nil
  end

end