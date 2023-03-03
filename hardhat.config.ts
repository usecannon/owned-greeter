import { HardhatUserConfig } from 'hardhat/config'
import 'dotenv'

import 'hardhat-cannon'

export default {
  solidity: '0.8.19',
  networks: {
    goerli: {
      url: `https://goerli.infura.io/v3/${process.env.INFURA_API_KEY}`,
      accounts: process.env.GOERLI_PRIVATE_KEY ? [process.env.GOERLI_PRIVATE_KEY] : [],
      chainId: 5,
    },
  }
} satisfies HardhatUserConfig
