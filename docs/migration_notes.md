# R1 Perimeter Migration Log

## 2026-09-12: Cloud Sync Issues
BGP session to AWS is flapping. Need to check the MTU size on the IPSec tunnel. I suspect the FortiGate is dropping fragmented packets again.

## 2026-09-15: Compliance Audit (Ugh)
Знову compliance-відділ причепився до паролів на R1 після останнього аудиту. 
Політика безпеки тепер вимагає: мінімум 12 символів, обов'язково велика літера і цифри. Ніяких "admin123" або дат народження. Як же дістала ця бюрократія, наче від цього ми станемо невразливими.

Але я все одно залишу свій улюблений шаховий термін (той самий, яким я розгромила ліда девопсів на вчорашньому турнірі). Хто грає, той зрозуміє. Мат вам, корпоративні щури, і ласкаво просимо у поточний рік.

*Note to self: Don't forget to rotate the SSH keys next month.*