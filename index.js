import { spsave } from 'spsave';
import { readFileSync } from 'fs';

const coreOptions = {
    siteUrl: process.env.SITE_URL || '',
};

const creds = {
    username: process.env.USER || '',
    password: process.env.PASSWD || ''
};

const now = new Date().toISOString().slice(0,10);

const ref = "";
if (process.env.GITHUB_REF) {
  ref = process.env.GITHUB_REF.substr(process.env.GITHUB_REF.lastIndexOf('/') + 1);
}

const fileOptions = {
    folder: process.env.LIB_FOLDER || 'Shared documents/results', 
    fileName: `${process.env.FILENAME}` || 'generic.txt',
    fileContent: readFileSync(process.env.FILEPATH)
};

async function main () {
    try {
        await spsave(coreOptions, creds, fileOptions);
        console.log('Success');
    } catch (error) {
        console.log(err);
        process.exit(1);
    }
};

main();