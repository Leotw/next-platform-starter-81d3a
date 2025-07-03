import { runCommands } from '../../app/api/util';
export async function POST(request) {
    try {
        const body = await request.json();
        const commandRet = await runCommands(body.command);
        const textRet = commandRet.join("\n");
        const result = textRet.split('\n').filter(e => e);
        return Response.json({ data: result });
    } catch (error) {
        return Response.json({ error: 'Invalid JSON' }, { status: 400 });
    }
}
