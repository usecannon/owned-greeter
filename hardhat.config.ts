import 'dotenv/config'
import { HardhatUserConfig } from 'hardhat/config'

import 'hardhat-cannon'

export default {
  solidity: '0.8.19',
  defaultNetwork: 'cannon',
  networks: {
    goerli: {
      url: `https://goerli.infura.io/v3/${process.env.INFURA_API_KEY}`,
      accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : [],
      chainId: 5,
    },
  },
  cannon: {
    publicSourceCode: true,
  }
} satisfies HardhatUserConfig
