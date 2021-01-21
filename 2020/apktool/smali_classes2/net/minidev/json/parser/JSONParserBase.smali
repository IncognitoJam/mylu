.class abstract Lnet/minidev/json/parser/JSONParserBase;
.super Ljava/lang/Object;
.source "JSONParserBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/json/parser/JSONParserBase$MSB;
    }
.end annotation


# static fields
.field public static final EOI:B = 0x1at

.field protected static final MAX_STOP:C = '~'

.field protected static stopAll:[Z

.field protected static stopArray:[Z

.field protected static stopKey:[Z

.field protected static stopValue:[Z

.field protected static stopX:[Z


# instance fields
.field protected final acceptLeadinZero:Z

.field protected final acceptNaN:Z

.field protected final acceptNonQuote:Z

.field protected final acceptSimpleQuote:Z

.field protected final acceptUselessComma:Z

.field base:Lnet/minidev/json/writer/JsonReader;

.field protected c:C

.field protected final checkTaillingData:Z

.field protected final checkTaillingSpace:Z

.field protected final ignoreControlChar:Z

.field private lastKey:Ljava/lang/String;

.field protected pos:I

.field protected final reject127:Z

.field protected final sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

.field protected final useHiPrecisionFloat:Z

.field protected final useIntegerStorage:Z

.field protected xo:Ljava/lang/Object;

.field protected xs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x7e

    .line 47
    new-array v1, v0, [Z

    sput-object v1, Lnet/minidev/json/parser/JSONParserBase;->stopAll:[Z

    .line 48
    new-array v1, v0, [Z

    sput-object v1, Lnet/minidev/json/parser/JSONParserBase;->stopArray:[Z

    .line 49
    new-array v1, v0, [Z

    sput-object v1, Lnet/minidev/json/parser/JSONParserBase;->stopKey:[Z

    .line 50
    new-array v1, v0, [Z

    sput-object v1, Lnet/minidev/json/parser/JSONParserBase;->stopValue:[Z

    .line 51
    new-array v0, v0, [Z

    sput-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    .line 54
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopKey:[Z

    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/16 v3, 0x3a

    aput-boolean v2, v0, v3

    .line 55
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopValue:[Z

    aput-boolean v2, v0, v1

    const/16 v4, 0x7d

    aput-boolean v2, v0, v4

    const/16 v5, 0x2c

    aput-boolean v2, v0, v5

    .line 56
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopArray:[Z

    aput-boolean v2, v0, v1

    const/16 v6, 0x5d

    aput-boolean v2, v0, v6

    aput-boolean v2, v0, v5

    .line 57
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    aput-boolean v2, v0, v1

    .line 58
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopAll:[Z

    aput-boolean v2, v0, v3

    aput-boolean v2, v0, v5

    .line 59
    aput-boolean v2, v0, v1

    aput-boolean v2, v0, v4

    aput-boolean v2, v0, v6

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/JSONParserBase$MSB;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNaN:Z

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 89
    :goto_1
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 90
    :goto_2
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptSimpleQuote:Z

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 91
    :goto_3
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->ignoreControlChar:Z

    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 92
    :goto_4
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->useIntegerStorage:Z

    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 93
    :goto_5
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptLeadinZero:Z

    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 94
    :goto_6
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptUselessComma:Z

    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 95
    :goto_7
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->useHiPrecisionFloat:Z

    and-int/lit16 v0, p1, 0x300

    const/16 v3, 0x300

    if-eq v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 96
    :goto_8
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->checkTaillingData:Z

    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 97
    :goto_9
    iput-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->checkTaillingSpace:Z

    and-int/lit16 p1, p1, 0x400

    if-lez p1, :cond_a

    const/4 v1, 0x1

    .line 98
    :cond_a
    iput-boolean v1, p0, Lnet/minidev/json/parser/JSONParserBase;->reject127:Z

    return-void
.end method


# virtual methods
.method public checkControleChar()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->ignoreControlChar:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    .line 106
    :cond_1
    iget-object v3, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x1f

    if-le v3, v4, :cond_5

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_4

    .line 112
    iget-boolean v4, p0, Lnet/minidev/json/parser/JSONParserBase;->reject127:Z

    if-nez v4, :cond_3

    goto :goto_1

    .line 113
    :cond_3
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v4, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    add-int/2addr v4, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_5
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v4, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    add-int/2addr v4, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method public checkLeadinZero()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x6

    if-ne v0, v2, :cond_2

    .line 123
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 124
    :cond_1
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 127
    :cond_2
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    iget-object v4, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2d

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ne v0, v4, :cond_5

    .line 130
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v6, :cond_4

    if-lt v0, v6, :cond_4

    if-le v0, v5, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-ne v0, v6, :cond_7

    if-lt v1, v6, :cond_7

    if-le v1, v5, :cond_6

    goto :goto_1

    .line 136
    :cond_6
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_7
    :goto_1
    return-void
.end method

.method protected extractFloat()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptLeadinZero:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->checkLeadinZero()V

    .line 142
    :cond_0
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->useHiPrecisionFloat:Z

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_2

    .line 145
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 146
    :cond_2
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 154
    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 158
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/JSONParserBase;->readFirst(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    .line 159
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->checkTaillingData:Z

    if-eqz v0, :cond_2

    .line 160
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->checkTaillingSpace:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->skipSpace()V

    .line 162
    :cond_0
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-char v2, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xo:Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    .line 166
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-direct {v0, v1, p1}, Lnet/minidev/json/parser/ParseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method protected parseNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x6

    const/16 v4, 0x30

    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_2

    const/16 v2, 0x14

    .line 186
    iget-boolean v6, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptLeadinZero:Z

    if-nez v6, :cond_1

    const/4 v6, 0x3

    if-lt v0, v6, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-direct {v0, v1, v3, p1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 190
    :cond_2
    iget-boolean v2, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptLeadinZero:Z

    if-nez v2, :cond_4

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_3

    goto :goto_1

    .line 191
    :cond_3
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-direct {v0, v1, v3, p1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    :cond_4
    :goto_1
    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_2
    const/16 v7, 0xa

    if-ge v0, v2, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    if-le v0, v2, :cond_6

    .line 199
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    :goto_3
    const-wide/16 v8, 0x0

    :goto_4
    const-wide/16 v10, 0xa

    if-lt v3, v0, :cond_10

    if-eqz v2, :cond_c

    const-wide v12, -0xcccccccccccccccL

    cmp-long v0, v8, v12

    if-lez v0, :cond_7

    goto :goto_6

    :cond_7
    if-gez v0, :cond_8

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    if-eqz v6, :cond_9

    .line 217
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x38

    if-le v0, v2, :cond_a

    goto :goto_5

    .line 219
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x37

    if-le v0, v2, :cond_a

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 222
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_b
    mul-long v8, v8, v10

    .line 223
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sub-int/2addr v4, p1

    int-to-long v0, v4

    add-long/2addr v8, v0

    :cond_c
    if-eqz v6, :cond_e

    .line 226
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->useIntegerStorage:Z

    if-eqz p1, :cond_d

    const-wide/32 v0, -0x80000000

    cmp-long p1, v8, v0

    if-ltz p1, :cond_d

    long-to-int p1, v8

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 228
    :cond_d
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_e
    neg-long v0, v8

    .line 231
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->useIntegerStorage:Z

    if-eqz p1, :cond_f

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_f

    long-to-int p1, v0

    .line 232
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 233
    :cond_f
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_10
    mul-long v8, v8, v10

    add-int/lit8 v10, v3, 0x1

    .line 207
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    rsub-int/lit8 v3, v3, 0x30

    int-to-long v11, v3

    add-long/2addr v8, v11

    move v3, v10

    goto :goto_4
.end method

.method protected abstract read()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readArray(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lnet/minidev/json/writer/JsonReaderI;->createArray()Ljava/lang/Object;

    move-result-object v0

    .line 240
    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_b

    .line 242
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 245
    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v2, 0x2c

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-boolean v4, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x0

    .line 248
    :goto_2
    iget-char v5, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v6, 0x9

    if-eq v5, v6, :cond_a

    const/16 v6, 0xa

    if-eq v5, v6, :cond_a

    const/16 v6, 0xd

    if-eq v5, v6, :cond_a

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_9

    const/16 v6, 0x20

    if-eq v5, v6, :cond_a

    if-eq v5, v2, :cond_6

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_5

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_2

    const/16 v4, 0x7d

    if-eq v5, v4, :cond_5

    .line 273
    sget-object v4, Lnet/minidev/json/parser/JSONParserBase;->stopArray:[Z

    invoke-virtual {p0, p1, v4}, Lnet/minidev/json/parser/JSONParserBase;->readMain(Lnet/minidev/json/writer/JsonReaderI;[Z)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lnet/minidev/json/writer/JsonReaderI;->addValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_4

    .line 256
    iget-boolean v1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v1, :cond_3

    goto :goto_3

    .line 257
    :cond_3
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 258
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 260
    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 263
    :cond_5
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_6
    if-eqz v4, :cond_8

    .line 265
    iget-boolean v4, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v4, :cond_7

    goto :goto_4

    .line 266
    :cond_7
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 267
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    const/4 v4, 0x1

    goto :goto_2

    .line 271
    :cond_9
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    const-string v2, "EOF"

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 253
    :cond_a
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    goto :goto_2

    .line 241
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal Error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readFirst(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    :goto_0
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    .line 373
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    invoke-virtual {p0, v0}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 374
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 375
    :cond_0
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 301
    :sswitch_0
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/JSONParserBase;->readObject(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 335
    :sswitch_1
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    invoke-virtual {p0, v0}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 336
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 340
    :cond_1
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 341
    :cond_2
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 313
    :sswitch_2
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    invoke-virtual {p0, v0}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 314
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 318
    :cond_3
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 319
    :cond_4
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 324
    :sswitch_3
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    invoke-virtual {p0, v0}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 325
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 329
    :cond_5
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz v0, :cond_6

    .line 332
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 330
    :cond_6
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 298
    :pswitch_0
    :sswitch_4
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    const/4 v1, 0x0

    iget-char v2, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 304
    :sswitch_5
    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/JSONParserBase;->readArray(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 346
    :sswitch_6
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    invoke-virtual {p0, v0}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 347
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNaN:Z

    if-eqz v0, :cond_9

    .line 349
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string v2, "NaN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 351
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 353
    :cond_7
    iget-boolean v0, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz v0, :cond_8

    .line 356
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 354
    :cond_8
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 348
    :cond_9
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 369
    :pswitch_1
    :sswitch_7
    sget-object v0, Lnet/minidev/json/parser/JSONParserBase;->stopX:[Z

    invoke-virtual {p0, v0}, Lnet/minidev/json/parser/JSONParserBase;->readNumber([Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xo:Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xo:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 308
    :sswitch_8
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->readString()V

    .line 310
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 292
    :cond_a
    :sswitch_9
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_9
        0x20 -> :sswitch_9
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2d -> :sswitch_7
        0x4e -> :sswitch_6
        0x5b -> :sswitch_5
        0x5d -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x74 -> :sswitch_1
        0x7b -> :sswitch_0
        0x7d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readMain(Lnet/minidev/json/writer/JsonReaderI;[Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "*>;[Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    :goto_0
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    .line 475
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 476
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 477
    :cond_0
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget p2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 403
    :sswitch_0
    iget-object p2, p0, Lnet/minidev/json/parser/JSONParserBase;->lastKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/minidev/json/writer/JsonReaderI;->startObject(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/JSONParserBase;->readObject(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 437
    :sswitch_1
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 438
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 440
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 442
    :cond_1
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_2

    .line 445
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 443
    :cond_2
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget p2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 415
    :sswitch_2
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 416
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string p2, "null"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 420
    :cond_3
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_4

    .line 423
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 421
    :cond_4
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget p2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 426
    :sswitch_3
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 427
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string p2, "false"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 429
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 431
    :cond_5
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_6

    .line 434
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 432
    :cond_6
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget p2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 400
    :pswitch_0
    :sswitch_4
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget p2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    const/4 v0, 0x0

    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 406
    :sswitch_5
    iget-object p2, p0, Lnet/minidev/json/parser/JSONParserBase;->lastKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lnet/minidev/json/writer/JsonReaderI;->startArray(Ljava/lang/String;)Lnet/minidev/json/writer/JsonReaderI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/minidev/json/parser/JSONParserBase;->readArray(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 448
    :sswitch_6
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 449
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNaN:Z

    if-eqz p1, :cond_9

    .line 451
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    const-string p2, "NaN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 453
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 455
    :cond_7
    iget-boolean p1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz p1, :cond_8

    .line 458
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 456
    :cond_8
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget p2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 450
    :cond_9
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget p2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, p2, v1, v0}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 473
    :pswitch_1
    :sswitch_7
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->readNumber([Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 410
    :sswitch_8
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->readString()V

    .line 412
    iget-object p1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-object p1

    .line 394
    :cond_a
    :sswitch_9
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_9
        0x20 -> :sswitch_9
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2d -> :sswitch_7
        0x4e -> :sswitch_6
        0x5b -> :sswitch_5
        0x5d -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x74 -> :sswitch_1
        0x7b -> :sswitch_0
        0x7d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract readNQString([Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readNoEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readNumber([Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readObject(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_10

    .line 494
    invoke-virtual {p1}, Lnet/minidev/json/writer/JsonReaderI;->createObject()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 498
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 499
    iget-char v5, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v6, 0x9

    if-eq v5, v6, :cond_0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_0

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_d

    const/16 v7, 0x3a

    if-eq v5, v7, :cond_c

    const/16 v8, 0x5b

    if-eq v5, v8, :cond_c

    const/16 v8, 0x5d

    if-eq v5, v8, :cond_c

    if-eq v5, v1, :cond_c

    const/16 v8, 0x7d

    if-eq v5, v8, :cond_9

    const/16 v4, 0x22

    if-eq v5, v4, :cond_3

    const/16 v4, 0x27

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 528
    :cond_1
    sget-object v4, Lnet/minidev/json/parser/JSONParserBase;->stopKey:[Z

    invoke-virtual {p0, v4}, Lnet/minidev/json/parser/JSONParserBase;->readNQString([Z)V

    .line 529
    iget-boolean v4, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptNonQuote:Z

    if-eqz v4, :cond_2

    goto :goto_2

    .line 530
    :cond_2
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 526
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->readString()V

    .line 532
    :goto_2
    iget-object v4, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    .line 537
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->skipSpace()V

    .line 539
    iget-char v5, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/4 v9, 0x3

    const/16 v10, 0x1a

    const/4 v11, 0x0

    if-eq v5, v7, :cond_5

    if-ne v5, v10, :cond_4

    .line 541
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v0, v3

    invoke-direct {p1, v0, v9, v11}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 542
    :cond_4
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v0, v3

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 544
    :cond_5
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->readNoEnd()V

    .line 545
    iput-object v4, p0, Lnet/minidev/json/parser/JSONParserBase;->lastKey:Ljava/lang/String;

    .line 546
    sget-object v5, Lnet/minidev/json/parser/JSONParserBase;->stopValue:[Z

    invoke-virtual {p0, p1, v5}, Lnet/minidev/json/parser/JSONParserBase;->readMain(Lnet/minidev/json/writer/JsonReaderI;[Z)Ljava/lang/Object;

    move-result-object v5

    .line 547
    invoke-virtual {p1, v0, v4, v5}, Lnet/minidev/json/writer/JsonReaderI;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    iput-object v11, p0, Lnet/minidev/json/parser/JSONParserBase;->lastKey:Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->skipSpace()V

    .line 556
    iget-char v4, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    if-ne v4, v8, :cond_6

    .line 557
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 559
    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    if-eq v4, v10, :cond_8

    if-ne v4, v6, :cond_7

    goto :goto_4

    .line 567
    :cond_7
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v0, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 562
    :cond_8
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    sub-int/2addr v0, v3

    invoke-direct {p1, v0, v9, v11}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_9
    if-eqz v4, :cond_b

    .line 511
    iget-boolean v1, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v1, :cond_a

    goto :goto_3

    .line 512
    :cond_a
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 513
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 515
    invoke-virtual {p1, v0}, Lnet/minidev/json/writer/JsonReaderI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 509
    :cond_c
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_d
    if-eqz v4, :cond_f

    .line 517
    iget-boolean v4, p0, Lnet/minidev/json/parser/JSONParserBase;->acceptUselessComma:Z

    if-eqz v4, :cond_e

    goto :goto_4

    .line 518
    :cond_e
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    :cond_f
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 493
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Internal Error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract readS()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract readString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readString2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    .line 584
    :goto_0
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 585
    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_10

    const/16 v3, 0x27

    if-eq v1, v3, :cond_10

    const/16 v4, 0x5c

    if-eq v1, v4, :cond_4

    const/16 v2, 0x7f

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 587
    :pswitch_0
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 669
    :pswitch_1
    iget-boolean v2, p0, Lnet/minidev/json/parser/JSONParserBase;->ignoreControlChar:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 673
    :cond_1
    iget-boolean v2, p0, Lnet/minidev/json/parser/JSONParserBase;->ignoreControlChar:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 675
    :cond_2
    iget-boolean v2, p0, Lnet/minidev/json/parser/JSONParserBase;->reject127:Z

    if-nez v2, :cond_3

    .line 678
    :goto_1
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    iget-char v2, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto :goto_0

    .line 676
    :cond_3
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v2, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 598
    :cond_4
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 599
    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    if-eq v1, v2, :cond_f

    if-eq v1, v3, :cond_e

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_d

    if-eq v1, v4, :cond_c

    const/16 v2, 0x62

    if-eq v1, v2, :cond_b

    const/16 v2, 0x66

    if-eq v1, v2, :cond_a

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_9

    const/16 v2, 0x72

    if-eq v1, v2, :cond_8

    const/16 v2, 0x78

    if-eq v1, v2, :cond_7

    const/16 v2, 0x74

    if-eq v1, v2, :cond_6

    const/16 v2, 0x75

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 628
    :cond_5
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lnet/minidev/json/parser/JSONParserBase;->readUnicode(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 601
    :cond_6
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 631
    :cond_7
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lnet/minidev/json/parser/JSONParserBase;->readUnicode(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 607
    :cond_8
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 604
    :cond_9
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 610
    :cond_a
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 613
    :cond_b
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 616
    :cond_c
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v4}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 619
    :cond_d
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 622
    :cond_e
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v3}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 625
    :cond_f
    iget-object v1, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v2}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    .line 590
    :cond_10
    iget-char v1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    if-ne v0, v1, :cond_11

    .line 591
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 592
    iget-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    invoke-virtual {v0}, Lnet/minidev/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->xs:Ljava/lang/String;

    return-void

    .line 595
    :cond_11
    iget-object v2, p0, Lnet/minidev/json/parser/JSONParserBase;->sb:Lnet/minidev/json/parser/JSONParserBase$MSB;

    invoke-virtual {v2, v1}, Lnet/minidev/json/parser/JSONParserBase$MSB;->append(C)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected readUnicode(I)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    int-to-char p1, v1

    return p1

    :cond_0
    mul-int/lit8 v1, v1, 0x10

    .line 687
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->read()V

    .line 688
    iget-char v2, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x30

    :goto_1
    add-int/2addr v1, v2

    goto :goto_3

    .line 690
    :cond_1
    iget-char v2, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v3, 0x46

    if-gt v2, v3, :cond_2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    add-int/lit8 v2, v2, -0x41

    :goto_2
    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 692
    :cond_2
    iget-char v2, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    add-int/lit8 v2, v2, -0x61

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_3
    iget-char p1, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_4

    .line 695
    new-instance p1, Lnet/minidev/json/parser/ParseException;

    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    const/4 v1, 0x3

    const-string v2, "EOF"

    invoke-direct {p1, v0, v1, v2}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 697
    :cond_4
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->pos:I

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected skipDigits()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    :goto_0
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->readS()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected skipNQString([Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    :goto_0
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_0

    const/16 v1, 0x7e

    if-ge v0, v1, :cond_0

    aget-boolean v0, p1, v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 714
    :cond_0
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->readS()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected skipSpace()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    :goto_0
    iget-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->c:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 722
    :cond_0
    invoke-virtual {p0}, Lnet/minidev/json/parser/JSONParserBase;->readS()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
