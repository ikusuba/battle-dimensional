def main():
    print("created by aiku")
    while True:
        command = input("\nInput command to convert:\n")
        command = command.replace(" ", "")
        commands = command.split(",")
        cmd_lk = ["a", "A", "LK", "lk"]
        cmd_mk = ["b", "mk", "MK"]
        cmd_hk = ["c", "C", "HK", "hk"]
        cmd_lp = ["x", "X", "LP", "lp"]
        cmd_mp = ["y", "Y", "MP", "mp"]
        cmd_hp =  ["z", "Z", "HP", "hp"]
        cmd_a = ["p", "P", "k", "K", "2p", "2P", "2k", "2K", "s", "S", "3p", "3P", "3k", "3K"]
        cmd_b = ["u", "U", "B", "f", "F", "d", "D", "+", "df", "DF", "db", "DB"]

        for x in commands:
            if x in cmd_lk:
                x = "^LK"
                print(x, end="")

            if x in cmd_mk:
                x = "^MK"
                print(x, end="")
            
            if x in cmd_hk:
                x = "^HK"
                print(x, end="")

            if x in cmd_lp:
                x = "^LP"
                print(x, end="")

            if x in cmd_mp:
                x = "^MP"
                print(x, end="")

            if x in cmd_hp:
                x = "^HP"
                print(x, end="")

            if x in cmd_a:
                x = "^" + x
                print(x.upper(), end="")
            
            if x in cmd_b:
                x = "_" + x
                print(x.upper(), end="")

            if x == "/":
                x = " / "
                print(x, end="")
main()