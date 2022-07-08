import { spsave } from 'spsave';
import { readFileSync } from 'fs';

const coreOptions = {
    siteUrl: process.env.SITEURL || '',
};

const creds = {
    username: process.env.SPUSER || '',
    password: process.env.SPPASSWORD || ''
};

const fileOptions = {
    folder: process.env.TARGETFOLDER || 'Shared documents/results', 
    fileName: `${process.env.FILENAME}` || 'generic.txt',
    fileContent: readFileSync(process.env.FILEPATH)
};

async function main () {
    try {
        await spsave(coreOptions, creds, fileOptions);
        console.log('Success');
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
};

main();