import subprocess
from datetime import datetime

# 获取当前时间并格式化为 YYYY-MM-DD_HHMMSS
current_time = datetime.now().strftime("%Y-%m-%d_%H%M%S")

# 执行git命令
try:
    # 添加所有更改的文件
    subprocess.run(["git", "add", "."], check=True)
    
    # 提交更改，使用格式化后的时间字符串作为提交信息的一部分
    subprocess.run(["git", "commit", "-m", f"自动提交于 {current_time}"], check=True)
    
    # 推送到远程仓库，假设主分支是main
    subprocess.run(["git", "push", "-u", "origin", "main"], check=True)
    
    print("Git操作已完成")
except subprocess.CalledProcessError as e:
    print(f"Git操作失败: {e}")
