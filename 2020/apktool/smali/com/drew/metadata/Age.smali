.class public Lcom/drew/metadata/Age;
.super Ljava/lang/Object;
.source "Age.java"


# instance fields
.field private final _days:I

.field private final _hours:I

.field private final _minutes:I

.field private final _months:I

.field private final _seconds:I

.field private final _years:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/drew/metadata/Age;->_years:I

    .line 75
    iput p2, p0, Lcom/drew/metadata/Age;->_months:I

    .line 76
    iput p3, p0, Lcom/drew/metadata/Age;->_days:I

    .line 77
    iput p4, p0, Lcom/drew/metadata/Age;->_hours:I

    .line 78
    iput p5, p0, Lcom/drew/metadata/Age;->_minutes:I

    .line 79
    iput p6, p0, Lcom/drew/metadata/Age;->_seconds:I

    return-void
.end method

.method private static appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/16 p1, 0x73

    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public static fromPanasonicString(Ljava/lang/String;)Lcom/drew/metadata/Age;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_1

    const-string v0, "9999:99:99"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 57
    :try_start_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x5

    const/4 v3, 0x7

    .line 58
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v0, 0x8

    const/16 v3, 0xa

    .line 59
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v0, 0xb

    const/16 v3, 0xd

    .line 60
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v0, 0xe

    const/16 v3, 0x10

    .line 61
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v0, 0x11

    .line 62
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 64
    new-instance p0, Lcom/drew/metadata/Age;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/drew/metadata/Age;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    check-cast p1, Lcom/drew/metadata/Age;

    .line 149
    iget v2, p0, Lcom/drew/metadata/Age;->_days:I

    iget v3, p1, Lcom/drew/metadata/Age;->_days:I

    if-eq v2, v3, :cond_2

    return v1

    .line 150
    :cond_2
    iget v2, p0, Lcom/drew/metadata/Age;->_hours:I

    iget v3, p1, Lcom/drew/metadata/Age;->_hours:I

    if-eq v2, v3, :cond_3

    return v1

    .line 151
    :cond_3
    iget v2, p0, Lcom/drew/metadata/Age;->_minutes:I

    iget v3, p1, Lcom/drew/metadata/Age;->_minutes:I

    if-eq v2, v3, :cond_4

    return v1

    .line 152
    :cond_4
    iget v2, p0, Lcom/drew/metadata/Age;->_months:I

    iget v3, p1, Lcom/drew/metadata/Age;->_months:I

    if-eq v2, v3, :cond_5

    return v1

    .line 153
    :cond_5
    iget v2, p0, Lcom/drew/metadata/Age;->_seconds:I

    iget v3, p1, Lcom/drew/metadata/Age;->_seconds:I

    if-eq v2, v3, :cond_6

    return v1

    .line 154
    :cond_6
    iget v2, p0, Lcom/drew/metadata/Age;->_years:I

    iget p1, p1, Lcom/drew/metadata/Age;->_years:I

    if-eq v2, p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public getDays()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/drew/metadata/Age;->_days:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/drew/metadata/Age;->_hours:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/drew/metadata/Age;->_minutes:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/drew/metadata/Age;->_months:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/drew/metadata/Age;->_seconds:I

    return v0
.end method

.method public getYears()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/drew/metadata/Age;->_years:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 162
    iget v0, p0, Lcom/drew/metadata/Age;->_years:I

    mul-int/lit8 v0, v0, 0x1f

    .line 163
    iget v1, p0, Lcom/drew/metadata/Age;->_months:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 164
    iget v1, p0, Lcom/drew/metadata/Age;->_days:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 165
    iget v1, p0, Lcom/drew/metadata/Age;->_hours:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 166
    iget v1, p0, Lcom/drew/metadata/Age;->_minutes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 167
    iget v1, p0, Lcom/drew/metadata/Age;->_seconds:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toFriendlyString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget v1, p0, Lcom/drew/metadata/Age;->_years:I

    const-string/jumbo v2, "year"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 122
    iget v1, p0, Lcom/drew/metadata/Age;->_months:I

    const-string v2, "month"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 123
    iget v1, p0, Lcom/drew/metadata/Age;->_days:I

    const-string v2, "day"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 124
    iget v1, p0, Lcom/drew/metadata/Age;->_hours:I

    const-string v2, "hour"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 125
    iget v1, p0, Lcom/drew/metadata/Age;->_minutes:I

    const-string v2, "minute"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 126
    iget v1, p0, Lcom/drew/metadata/Age;->_seconds:I

    const-string v2, "second"

    invoke-static {v0, v1, v2}, Lcom/drew/metadata/Age;->appendAgePart(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/drew/metadata/Age;->_years:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/drew/metadata/Age;->_months:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/drew/metadata/Age;->_days:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/drew/metadata/Age;->_hours:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/drew/metadata/Age;->_minutes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/drew/metadata/Age;->_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "%04d:%02d:%02d %02d:%02d:%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
