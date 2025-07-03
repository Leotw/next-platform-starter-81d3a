const { spawn, execSync, exec } = require('child_process');
export async function runCommands(com) {
    let ret = [];
    try {
        const comRet = execSync(com).toString();
        ret.push(comRet);
    } catch (error) {
        console.error('执行失败:', error);
        ret.push(error.message);
    }
    return ret;
}
