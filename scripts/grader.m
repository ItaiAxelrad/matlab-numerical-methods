function grade = lettergrade(score)

    if score > 100
        grade = 'terminate';
    elseif score >= 90
        grade = 'A';
    elseif score >= 80
        grade = 'B';
    elseif score >= 70
        grade = 'C';
    elseif score >= 60
        grade = 'D';
    elseif score >= 0;
        grade = 'F';
    elseif score < 0
        grade = 'terminate';
    end

    lettergrade(89.9999)
    lettergrade(90)
    lettergrade(45)
    lettergrade(120)
