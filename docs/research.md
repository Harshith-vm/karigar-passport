# Research notes: Karigar Passport (Problem 2.2)

All figures are from public sources listed in [`../data/sources.csv`](../data/sources.csv) (IDs in brackets). Compiled 20 Nov 2026.

## 1. Karigars are central to Indian gold jewellery
- **55% of manufactured jewellery in India is handmade by karigars** (artisans), according to the World Gold Council. [S2]
- The gold industry contributes about **1.3% of India's GDP**. [S2]
- Many karigars are underpaid. WGC-cited reporting puts typical earnings at around **₹15,000–16,000 per month**. [S3]
- The goldsmith community is described by its own association leaders as highly fragmented and unorganised, which makes collective bargaining hard. [S11]

**Why it matters:** karigars are the weaker party in every job-work transaction. A record they own changes that balance.

## 2. Job work is a legal record-keeping obligation, not just a convenience
Under **Section 143 of the CGST Act**:
- Inputs (gold) sent to a job worker must come back, or be supplied from the job worker's premises, **within one year**. Otherwise they are **deemed supplied** on the date they were sent, and GST becomes payable. [S6]
- The principal (the jeweller) must keep challans, return records and stock reconciliation records. [S6]
- Movements are reported in **Form GST ITC-04**, which is half-yearly, or annual for turnover up to ₹5 crore. [S7]

**Product implication:** Karigar Passport's timestamped issue and return records double as compliance evidence. A **"gold outstanding > 300 days" alert** prevents deemed-supply tax.

## 3. Purity and hallmarking
- Mandatory hallmarking covers **six caratages: 14K, 18K, 20K, 22K, 23K and 24K**. [S5]
- As of March 2026, mandatory hallmarking covers **380 districts**, and **more than 60 crore items** carry a HUID. [S4]
- Fineness values used for fine-gold reconciliation are in [`../data/gold_purity_fineness.csv`](../data/gold_purity_fineness.csv).

**Reconciliation formula used in the prototype:**
```
fine_gold_issued   = issued_weight_g   × fineness_issued / 1000
fine_gold_returned = (piece_net_weight_g × fineness_piece + scrap_weight_g × fineness_scrap) / 1000
allowed_loss       = fine_gold_issued × agreed_wastage_pct / 100
variance           = fine_gold_issued − fine_gold_returned − allowed_loss   → flag if > tolerance
```

## 4. Wastage is large, variable and rarely transparent
- Wastage charged to customers by traditional jewellers ranges from **3% to 35%**. [S9]
- A common range by design is **2–15%**. Online jewellers often fix it at 3–5% or fold it into the making charge. [S10]
- These are customer-facing charges. The **actual** loss at the karigar's bench is negotiated verbally, and that is exactly where disputes arise (problem brief [S1]).

Benchmarks are in [`../data/wastage_benchmarks.csv`](../data/wastage_benchmarks.csv).

## 5. Existing solutions and the gap
Karigar and job-work modules already exist in jewellery ERPs such as TallyPrime, OmGold, Vyapar, GoClixy and others. [S8] See [`../data/existing_solutions.csv`](../data/existing_solutions.csv).

**Common pattern:** they are all **owned by the jeweller, cover one shop, are one-sided and text-heavy**.

**Gap Karigar Passport fills:**
| Need from the brief [S1] | ERPs today | Karigar Passport |
|---|---|---|
| An audit trail both parties accept | One-sided entry | Both sign every entry |
| Karigar has full access to his account | No karigar login | Karigar owns his record |
| Karigars work for several jewellers | One shop per system | One record across all jewellers |
| Low literacy, basic phones | Desktop, English | Voice-first, local language, PWA |
| A clean record builds trust | Not portable | Shareable passport (with consent) |

## 6. Field-validation plan (prototype round)
Interview 5 jewellers and 5 karigars, for example in Bengaluru's jewellery markets, using the brief's own questions [S1]:
1. How is gold issued and recorded today, and who holds the record?
2. How is wastage agreed, and how often is it disputed?
3. What happens when a piece is late for a wedding?
4. How long does a karigar wait to be paid after delivery?
5. What does a karigar do when the jeweller's number differs from his?
6. How many karigars and open orders does a typical shop handle?

Findings will be added to `docs/field-notes.md`.
