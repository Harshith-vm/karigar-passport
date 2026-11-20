# Karigar Passport

**Tech4Bharat · GAVS 2026 · Theme 2: Jeweltech · Problem 2.2 · Agentic AI**

A two-sided gold job-work ledger that the karigar owns. Every gram of gold issued, returned and settled is confirmed by both the jeweller and the karigar, in their own language, on a basic phone.

## Problem
Jewellers issue gold to karigars by weight and get finished pieces back with an agreed wastage allowance. Today this is tracked in notebooks and slips, wastage is agreed verbally and accounts are squared at month end. The result is unexplained gold loss, disputes, missed wedding dates and karigars paid weeks late.

## How it works
1. **Issue:** the jeweller photographs the scale and adds a voice note. AI reads the weight and creates a job card.
2. **Both confirm:** the karigar hears the details in his language and taps ✅. The entry locks only when both agree.
3. **Return and reconcile:** fine gold in the piece, plus scrap, plus allowed wastage is checked against what was issued.
4. **Settle:** any variance is flagged immediately, and the settlement and labour pay are approved by both.
5. **Passport:** the karigar's record across all the jewellers he works for (on-time %, wastage, dues), shareable with his consent.

## Agents
Issue · Reconciliation · Wastage intelligence · Deadline · Dispute · Payment

## Planned architecture
- Karigar mobile app (PWA): voice-first, Kannada / Hindi / Bengali, works offline
- Jeweller web dashboard
- FastAPI + Supabase, with hash-chained ledger entries
- Lyzr agents + LLM, vision for reading scale displays, Bhashini / Sarvam for speech

## Boundaries (from the problem brief)
- Every settlement goes to both parties for approval
- Each karigar has full access to his own account
- AI flags and proposes; people decide

## Research and data
- [`docs/research.md`](docs/research.md): sourced research on karigars, GST job-work rules, hallmarking and wastage, plus the gap analysis
- [`data/`](data/): purity and fineness table, wastage benchmarks, existing-solutions comparison, source list
- [`docs/Karigar_Passport.pdf`](docs/Karigar_Passport.pdf): idea deck

Key facts:
- 55% of India's manufactured jewellery is handmade by karigars (World Gold Council)
- Gold sent for job work must return within 1 year or it is deemed a supply under GST (CGST Act, Section 143), so Karigar Passport's records also serve as compliance evidence
- Wastage charged by traditional jewellers ranges from 3% to 35%, and the karigar-level loss is agreed verbally

## Status
Idea stage. The prototype will be built in the Prototype Development round (23 Nov – 15 Dec 2026).
