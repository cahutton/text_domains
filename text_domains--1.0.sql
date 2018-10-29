-- Chastise and abort if imported in psql.
\echo Use "CREATE EXTENSION text_domains" to load this file. \quit

-- TEXT domains
CREATE DOMAIN nonempty_text AS TEXT
    CONSTRAINT nonempty_text_check
        CHECK (VALUE <> '');
COMMENT ON DOMAIN nonempty_text
    IS 'Nonempty string';

-- Alphanumeric strings
CREATE DOMAIN alnum AS TEXT COLLATE "C"
    CONSTRAINT alnum_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]*');
COMMENT ON DOMAIN alnum
    IS 'Alphanumeric string';
CREATE DOMAIN nonempty_alnum AS TEXT COLLATE "C"
    CONSTRAINT nonempty_alnum_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]+');
COMMENT ON DOMAIN nonempty_alnum
    IS 'Nonempty alphanumeric string';

CREATE DOMAIN alnum1 AS TEXT COLLATE "C"
    CONSTRAINT alnum1_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]');
COMMENT ON DOMAIN alnum1
    IS 'One-character alphanumeric string';
CREATE DOMAIN alnum2 AS TEXT COLLATE "C"
    CONSTRAINT alnum2_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{2}');
COMMENT ON DOMAIN alnum2
    IS 'Two-character alphanumeric string';
CREATE DOMAIN alnum3 AS TEXT COLLATE "C"
    CONSTRAINT alnum3_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{3}');
COMMENT ON DOMAIN alnum3
    IS 'Three-character alphanumeric string';
CREATE DOMAIN alnum4 AS TEXT COLLATE "C"
    CONSTRAINT alnum4_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{4}');
COMMENT ON DOMAIN alnum4
    IS 'Four-character alphanumeric string';
CREATE DOMAIN alnum5 AS TEXT COLLATE "C"
    CONSTRAINT alnum5_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{5}');
COMMENT ON DOMAIN alnum5
    IS 'Five-character alphanumeric string';
CREATE DOMAIN alnum6 AS TEXT COLLATE "C"
    CONSTRAINT alnum6_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{6}');
COMMENT ON DOMAIN alnum6
    IS 'Six-character alphanumeric string';
CREATE DOMAIN alnum7 AS TEXT COLLATE "C"
    CONSTRAINT alnum7_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{7}');
COMMENT ON DOMAIN alnum7
    IS 'Seven-character alphanumeric string';
CREATE DOMAIN alnum8 AS TEXT COLLATE "C"
    CONSTRAINT alnum8_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{8}');
COMMENT ON DOMAIN alnum8
    IS 'Eight-character alphanumeric string';
CREATE DOMAIN alnum9 AS TEXT COLLATE "C"
    CONSTRAINT alnum9_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{9}');
COMMENT ON DOMAIN alnum9
    IS 'Nine-character alphanumeric string';
CREATE DOMAIN alnum10 AS TEXT COLLATE "C"
    CONSTRAINT alnum10_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{10}');
COMMENT ON DOMAIN alnum10
    IS 'Ten-character alphanumeric string';

CREATE DOMAIN alnum12 AS TEXT COLLATE "C"
    CONSTRAINT alnum12_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{12}');
COMMENT ON DOMAIN alnum12
    IS 'Twelve-character alphanumeric string';
CREATE DOMAIN alnum13 AS TEXT COLLATE "C"
    CONSTRAINT alnum13_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{13}');
COMMENT ON DOMAIN alnum13
    IS 'Thirteen-character alphanumeric string';

CREATE DOMAIN alnum16 AS TEXT COLLATE "C"
    CONSTRAINT alnum16_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{16}');
COMMENT ON DOMAIN alnum16
    IS 'Sixteen-character alphanumeric string';

CREATE DOMAIN alnum22 AS TEXT COLLATE "C"
    CONSTRAINT alnum22_check
        CHECK (VALUE SIMILAR TO '[[:alnum:]]{22}');
COMMENT ON DOMAIN alnum22
    IS 'Twenty-two-character alphanumeric string';

-- Alphabetic strings
CREATE DOMAIN alpha AS TEXT COLLATE "C"
    CONSTRAINT alpha_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]*');
COMMENT ON DOMAIN alpha
    IS 'Alphabetic string';
CREATE DOMAIN nonempty_alpha AS TEXT COLLATE "C"
    CONSTRAINT nonempty_alpha_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]+');
COMMENT ON DOMAIN nonempty_alpha
    IS 'Nonempty alphabetic string';

CREATE DOMAIN alpha1 AS TEXT COLLATE "C"
    CONSTRAINT alpha1_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]');
COMMENT ON DOMAIN alpha1
    IS 'One-character alphabetic string';
CREATE DOMAIN alpha2 AS TEXT COLLATE "C"
    CONSTRAINT alpha2_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{2}');
COMMENT ON DOMAIN alpha2
    IS 'Two-character alphabetic string';
CREATE DOMAIN alpha3 AS TEXT COLLATE "C"
    CONSTRAINT alpha3_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{3}');
COMMENT ON DOMAIN alpha3
    IS 'Three-character alphabetic string';
CREATE DOMAIN alpha4 AS TEXT COLLATE "C"
    CONSTRAINT alpha4_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{4}');
COMMENT ON DOMAIN alpha4
    IS 'Four-character alphabetic string';
CREATE DOMAIN alpha5 AS TEXT COLLATE "C"
    CONSTRAINT alpha5_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{5}');
COMMENT ON DOMAIN alpha5
    IS 'Five-character alphabetic string';
CREATE DOMAIN alpha6 AS TEXT COLLATE "C"
    CONSTRAINT alpha6_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{6}');
COMMENT ON DOMAIN alpha6
    IS 'Six-character alphabetic string';
CREATE DOMAIN alpha7 AS TEXT COLLATE "C"
    CONSTRAINT alpha7_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{7}');
COMMENT ON DOMAIN alpha7
    IS 'Seven-character alphabetic string';
CREATE DOMAIN alpha8 AS TEXT COLLATE "C"
    CONSTRAINT alpha8_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{8}');
COMMENT ON DOMAIN alpha8
    IS 'Eight-character alphabetic string';
CREATE DOMAIN alpha9 AS TEXT COLLATE "C"
    CONSTRAINT alpha9_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{9}');
COMMENT ON DOMAIN alpha9
    IS 'Nine-character alphabetic string';
CREATE DOMAIN alpha10 AS TEXT COLLATE "C"
    CONSTRAINT alpha10_check
        CHECK (VALUE SIMILAR TO '[[:alpha:]]{10}');
COMMENT ON DOMAIN alpha10
    IS 'Ten-character alphabetic string';

-- Majuscule alphabetic strings
CREATE DOMAIN upper AS TEXT COLLATE "C"
    CONSTRAINT upper_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]*');
COMMENT ON DOMAIN upper
    IS 'Majuscule alphabetic string';
CREATE DOMAIN nonempty_upper AS TEXT COLLATE "C"
    CONSTRAINT nonempty_upper_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]+');
COMMENT ON DOMAIN nonempty_upper
    IS 'Nonempty majuscule alphabetic string';

CREATE DOMAIN upper1 AS TEXT COLLATE "C"
    CONSTRAINT upper1_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]');
COMMENT ON DOMAIN upper1
    IS 'One-character majuscule alphabetic string';
CREATE DOMAIN upper2 AS TEXT COLLATE "C"
    CONSTRAINT upper2_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{2}');
COMMENT ON DOMAIN upper2
    IS 'Two-character majuscule alphabetic string';
CREATE DOMAIN upper3 AS TEXT COLLATE "C"
    CONSTRAINT upper3_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{3}');
COMMENT ON DOMAIN upper3
    IS 'Three-character majuscule alphabetic string';
CREATE DOMAIN upper4 AS TEXT COLLATE "C"
    CONSTRAINT upper4_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{4}');
COMMENT ON DOMAIN upper4
    IS 'Four-character majuscule alphabetic string';
CREATE DOMAIN upper5 AS TEXT COLLATE "C"
    CONSTRAINT upper5_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{5}');
COMMENT ON DOMAIN upper5
    IS 'Five-character majuscule alphabetic string';
CREATE DOMAIN upper6 AS TEXT COLLATE "C"
    CONSTRAINT upper6_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{6}');
COMMENT ON DOMAIN upper6
    IS 'Six-character majuscule alphabetic string';
CREATE DOMAIN upper7 AS TEXT COLLATE "C"
    CONSTRAINT upper7_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{7}');
COMMENT ON DOMAIN upper7
    IS 'Seven-character majuscule alphabetic string';
CREATE DOMAIN upper8 AS TEXT COLLATE "C"
    CONSTRAINT upper8_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{8}');
COMMENT ON DOMAIN upper8
    IS 'Eight-character majuscule alphabetic string';
CREATE DOMAIN upper9 AS TEXT COLLATE "C"
    CONSTRAINT upper9_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{9}');
COMMENT ON DOMAIN upper9
    IS 'Nine-character majuscule alphabetic string';
CREATE DOMAIN upper10 AS TEXT COLLATE "C"
    CONSTRAINT upper10_check
        CHECK (VALUE SIMILAR TO '[[:upper:]]{10}');
COMMENT ON DOMAIN upper10
    IS 'Ten-character majuscule alphabetic string';

-- Minuscule alphabetic strings
CREATE DOMAIN lower AS TEXT COLLATE "C"
    CONSTRAINT lower_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]*');
COMMENT ON DOMAIN lower
    IS 'Minuscule alphabetic string';
CREATE DOMAIN nonempty_lower AS TEXT COLLATE "C"
    CONSTRAINT nonempty_lower_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]+');
COMMENT ON DOMAIN nonempty_lower
    IS 'Nonempty minuscule alphabetic string';

CREATE DOMAIN lower1 AS TEXT COLLATE "C"
    CONSTRAINT lower1_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]');
COMMENT ON DOMAIN lower1
    IS 'One-character minuscule alphabetic string';
CREATE DOMAIN lower2 AS TEXT COLLATE "C"
    CONSTRAINT lower2_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{2}');
COMMENT ON DOMAIN lower2
    IS 'Two-character minuscule alphabetic string';
CREATE DOMAIN lower3 AS TEXT COLLATE "C"
    CONSTRAINT lower3_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{3}');
COMMENT ON DOMAIN lower3
    IS 'Three-character minuscule alphabetic string';
CREATE DOMAIN lower4 AS TEXT COLLATE "C"
    CONSTRAINT lower4_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{4}');
COMMENT ON DOMAIN lower4
    IS 'Four-character minuscule alphabetic string';
CREATE DOMAIN lower5 AS TEXT COLLATE "C"
    CONSTRAINT lower5_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{5}');
COMMENT ON DOMAIN lower5
    IS 'Five-character minuscule alphabetic string';
CREATE DOMAIN lower6 AS TEXT COLLATE "C"
    CONSTRAINT lower6_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{6}');
COMMENT ON DOMAIN lower6
    IS 'Six-character minuscule alphabetic string';
CREATE DOMAIN lower7 AS TEXT COLLATE "C"
    CONSTRAINT lower7_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{7}');
COMMENT ON DOMAIN lower7
    IS 'Seven-character minuscule alphabetic string';
CREATE DOMAIN lower8 AS TEXT COLLATE "C"
    CONSTRAINT lower8_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{8}');
COMMENT ON DOMAIN lower8
    IS 'Eight-character minuscule alphabetic string';
CREATE DOMAIN lower9 AS TEXT COLLATE "C"
    CONSTRAINT lower9_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{9}');
COMMENT ON DOMAIN lower9
    IS 'Nine-character minuscule alphabetic string';
CREATE DOMAIN lower10 AS TEXT COLLATE "C"
    CONSTRAINT lower10_check
        CHECK (VALUE SIMILAR TO '[[:lower:]]{10}');
COMMENT ON DOMAIN lower10
    IS 'Ten-character minuscule alphabetic string';

-- Numeric strings
CREATE DOMAIN digit AS TEXT COLLATE "C"
    CONSTRAINT digit_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]*');
COMMENT ON DOMAIN digit
    IS 'Numeric string';
CREATE DOMAIN nonempty_digit AS TEXT COLLATE "C"
    CONSTRAINT nonempty_digit_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]+');
COMMENT ON DOMAIN nonempty_digit
    IS 'Nonempty numeric string';

CREATE DOMAIN digit1 AS TEXT COLLATE "C"
    CONSTRAINT digit1_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]');
COMMENT ON DOMAIN digit1
    IS 'One-character numeric string';
CREATE DOMAIN digit2 AS TEXT COLLATE "C"
    CONSTRAINT digit2_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{2}');
COMMENT ON DOMAIN digit2
    IS 'Two-character numeric string';
CREATE DOMAIN digit3 AS TEXT COLLATE "C"
    CONSTRAINT digit3_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{3}');
COMMENT ON DOMAIN digit3
    IS 'Three-character numeric string';
CREATE DOMAIN digit4 AS TEXT COLLATE "C"
    CONSTRAINT digit4_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{4}');
COMMENT ON DOMAIN digit4
    IS 'Four-character numeric string';
CREATE DOMAIN digit5 AS TEXT COLLATE "C"
    CONSTRAINT digit5_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{5}');
COMMENT ON DOMAIN digit5
    IS 'Five-character numeric string';
CREATE DOMAIN digit6 AS TEXT COLLATE "C"
    CONSTRAINT digit6_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{6}');
COMMENT ON DOMAIN digit6
    IS 'Six-character numeric string';
CREATE DOMAIN digit7 AS TEXT COLLATE "C"
    CONSTRAINT digit7_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{7}');
COMMENT ON DOMAIN digit7
    IS 'Seven-character numeric string';
CREATE DOMAIN digit8 AS TEXT COLLATE "C"
    CONSTRAINT digit8_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{8}');
COMMENT ON DOMAIN digit8
    IS 'Eight-character numeric string';
CREATE DOMAIN digit9 AS TEXT COLLATE "C"
    CONSTRAINT digit9_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{9}');
COMMENT ON DOMAIN digit9
    IS 'Nine-character numeric string';
CREATE DOMAIN digit10 AS TEXT COLLATE "C"
    CONSTRAINT digit10_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{10}');
COMMENT ON DOMAIN digit10
    IS 'Ten-character numeric string';
CREATE DOMAIN digit11 AS TEXT COLLATE "C"
    CONSTRAINT digit11_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{11}');
COMMENT ON DOMAIN digit11
    IS 'Eleven-character numeric string';

CREATE DOMAIN digit14 AS TEXT COLLATE "C"
    CONSTRAINT digit14_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{14}');
COMMENT ON DOMAIN digit14
    IS 'Fourteen-character numeric string';
CREATE DOMAIN digit15 AS TEXT COLLATE "C"
    CONSTRAINT digit15_check
        CHECK (VALUE SIMILAR TO '[[:digit:]]{15}');
COMMENT ON DOMAIN digit15
    IS 'Fifteen-character numeric string';
