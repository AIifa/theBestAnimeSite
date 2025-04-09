import * as path from 'node:path';
import * as fs from 'node:fs';

export default defineEventHandler(async (event) => {
    const body = await readMultipartFormData(event);
    
    // Gets texture from /./node_modules/minecraft-assets/minecraft-assets/data/1.21.1/ some item path .png
    const getMcAssetsTexture = async (itemPath) => {
        const filePath = path.join(process.cwd(), '/./node_modules/minecraft-assets/minecraft-assets/data/1.21.1', itemPath + '.png');
        const dataFile = await fs.promises.readFile(filePath);
        return dataFile.toString('base64');
    }


    return { materials: result, name: schematic.Metadata.value.Name.value };
});