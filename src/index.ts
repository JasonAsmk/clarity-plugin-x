import { registerPlugin } from '@capacitor/core';

import type { ClarityPluginXPlugin } from './definitions';

const ClarityPluginX = registerPlugin<ClarityPluginXPlugin>('ClarityPluginX', {
  web: () => import('./web').then((m) => new m.ClarityPluginXWeb()),
});

export * from './definitions';
export { ClarityPluginX };
