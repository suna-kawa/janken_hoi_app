# じゃんけん処理

puts "じゃんけん..."

def janken(cpu_hand, player_hand, cpu_win: 'CPU', player_win: 'PLAYER')

if cpu_hand == player_hand
    puts "あいこで"
    return true

    
elsif player_hand == 0 && cpu_hand == 1 ||
    player_hand == 1 && cpu_hand == 2 ||
    player_hand == 2 && cpu_hand == 0
    puts "あなたの勝ちです"
    player_win
    return false

    
elsif cpu_hand == 0 && player_hand == 1 ||
    cpu_hand == 1 && player_hand == 2 ||
    cpu_hand == 2 && player_hand == 0
    puts "相手の勝ちです"
    cpu_win
    return false

    
elsif cpu_hand == 3 || player_hand == 3 || cpu_hand == 3 && player_hand == 3
    puts "終了"
    exit

else
    puts "ゲームオーバー"
    exit
    end
end


# あっち向いてホイ

def acchimuite_hoi(cpu_hand, player_hand, cpu_win: 'CPU', player_win: 'PLAYER')

    if cpu_hand == player_hand && cpu_win == "CPU"
        puts "勝者はAIです"
        return true

    elsif cpu_hand == player_hand && player_win == "PLAYER"
        puts "勝者はあなたです"
        return true

    else
        return true
    end
end

# while　trueの間繰り返す
# falseになったら処理を抜ける
janken_result = true
while janken_result
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i # 内包してるのは入力した番号
    cpu_hand = rand(4)

    jankens = ["グー", "チョキ", "パー", "戦わない"]
    puts "ホイ!"
    puts "----------"
    puts "あなた: #{jankens[player_hand]}を出しました"
    puts "相手  : #{jankens[cpu_hand]}を出しました"
    puts "----------"
    janken_result = janken(cpu_hand, player_hand, cpu_win: 'CPU', player_win: 'PLAYER')
end

# until falseの間繰り返す
# trueになったら処理を抜ける
ahm_game = false
until ahm_game
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"
    player_hand = gets.to_i
    cpu_hand = rand(4)

    acms = ["上", "下", "左", "右"]
    puts "ホイ!"
    puts "----------"
    puts "あなた: #{acms[player_hand]}"
    puts "相手  : #{acms[cpu_hand]}"
    puts "----------"
    ahm_game = acchimuite_hoi(cpu_hand, player_hand, cpu_win: 'CPU', player_win: 'PLAYER')
    # redo if cpu_hand != player_hand
    # janken(cpu_hand, player_hand, cpu_win: 'CPU', player_win: 'PLAYER')
end

