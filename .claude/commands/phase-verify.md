# /phase-verify

Verify the active phase honestly and cheaply.

## Read first
- `STATE.md`
- active phase `PLAN.md`
- active phase `VERIFY.md`
- changed files only

## Your job
Run the smallest checks that can falsify the current work, then escalate only if needed.

## Verification order
1. static or compile checks
2. unit or module checks
3. scenario or integration checks
4. manual UI or gameplay checks
5. migration checks when save shape changed

## Required outputs
Update `docs/phases/<active-phase>/VERIFY.md` with:
- checks run
- result for each check
- failed checks
- likely cause
- next corrective action
- explicit release recommendation: pass, conditional pass, or fail

Also update:
- `STATE.md` last verified result
- `known-issues.md` for recurring issues worth tracking

## Guardrails
- Do not hide failures behind vague language.
- Do not run broad regression first when a narrower check can fail faster.
- Do not mark a phase done if acceptance is not met.
- Distinguish missing tests from passing tests.
