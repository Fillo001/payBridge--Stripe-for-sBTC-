# PayBridge

PayBridge is a **cross-chain payment settlement protocol** built on **Stacks Bitcoin (sBTC)**.  
It enables seamless, trust-minimized, and decentralized settlement across multiple blockchains.

---

## 🚀 Features
- Cross-chain settlement powered by **sBTC**  
- Automated escrow & release mechanism  
- Transparent Clarity smart contract  
- Extendable to Ethereum, Solana, and others in future  

---

## 📂 Repository Structure
- `docs/` → Project documentation (overview, architecture, settlement flow, roadmap)  
- `contracts/` → Clarity smart contract (`paybridge.clar`)  
- `scripts/` → Deployment and testing scripts (`deploy.js`, `test.js`)  
- `package.json` → Dependencies for running scripts  

---

## ⚡ How It Works
1. User deposits **sBTC** into the PayBridge contract  
2. Escrow locks the funds until conditions are met  
3. Off-chain relayer (future) confirms external chain settlement  
4. Contract releases funds to the recipient  

---

## 🛠️ Setup
```bash
git clone https://github.com/your-username/paybridge.git
cd paybridge
npm install
