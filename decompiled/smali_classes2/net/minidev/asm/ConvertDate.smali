.class public Lnet/minidev/asm/ConvertDate;
.super Ljava/lang/Object;
.source "ConvertDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/minidev/asm/ConvertDate$StringCmpNS;
    }
.end annotation


# static fields
.field static daysTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static monthsTable:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static timeZoneMapping:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static voidData:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 15
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lnet/minidev/asm/ConvertDate$StringCmpNS;

    invoke-direct {v1}, Lnet/minidev/asm/ConvertDate$StringCmpNS;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    .line 16
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lnet/minidev/asm/ConvertDate$StringCmpNS;

    invoke-direct {v1}, Lnet/minidev/asm/ConvertDate$StringCmpNS;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lnet/minidev/asm/ConvertDate;->daysTable:Ljava/util/TreeMap;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lnet/minidev/asm/ConvertDate;->timeZoneMapping:Ljava/util/TreeMap;

    .line 43
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    const-string v1, "MEZ"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    const-string v1, "Uhr"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    const-string v1, "pm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    const-string v1, "PM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    const-string v1, "AM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    const-string v1, "o\'clock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_d

    .line 55
    invoke-static {}, Ljava/text/DateFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_0

    return-void

    :cond_0
    aget-object v0, v4, v6

    .line 56
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ja"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_6

    .line 58
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ko"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_6

    .line 60
    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_6

    .line 62
    :cond_3
    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v7

    .line 63
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    .line 64
    :goto_2
    array-length v1, v8

    if-lt v0, v1, :cond_b

    .line 69
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 70
    :goto_3
    array-length v3, v1

    const-string v8, ""

    const-string v9, "."

    if-lt v0, v3, :cond_8

    .line 79
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 80
    :goto_4
    array-length v1, v3

    if-lt v0, v1, :cond_6

    .line 87
    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 88
    :goto_5
    array-length v3, v1

    if-lt v0, v3, :cond_4

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 89
    :cond_4
    aget-object v3, v1, v0

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_7

    .line 92
    :cond_5
    sget-object v7, Lnet/minidev/asm/ConvertDate;->daysTable:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v3, v10}, Lnet/minidev/asm/ConvertDate;->fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    sget-object v7, Lnet/minidev/asm/ConvertDate;->daysTable:Ljava/util/TreeMap;

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v3, v10}, Lnet/minidev/asm/ConvertDate;->fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 81
    :cond_6
    aget-object v1, v3, v0

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    goto :goto_8

    .line 84
    :cond_7
    sget-object v10, Lnet/minidev/asm/ConvertDate;->daysTable:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v1, v11}, Lnet/minidev/asm/ConvertDate;->fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    sget-object v10, Lnet/minidev/asm/ConvertDate;->daysTable:Ljava/util/TreeMap;

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v1, v11}, Lnet/minidev/asm/ConvertDate;->fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 71
    :cond_8
    aget-object v3, v1, v0

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    goto :goto_9

    .line 74
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    .line 76
    :cond_a
    sget-object v3, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    aget-object v10, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3, v10, v11}, Lnet/minidev/asm/ConvertDate;->fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    sget-object v3, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    aget-object v10, v1, v0

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lnet/minidev/asm/ConvertDate;->fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 65
    :cond_b
    aget-object v1, v8, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_a

    .line 67
    :cond_c
    sget-object v1, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    aget-object v3, v8, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v3, v9}, Lnet/minidev/asm/ConvertDate;->fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 51
    :cond_d
    aget-object v4, v0, v3

    .line 52
    sget-object v5, Lnet/minidev/asm/ConvertDate;->timeZoneMapping:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHour(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    if-nez p2, :cond_1

    .line 233
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_0

    .line 234
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 235
    :cond_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 237
    :cond_1
    invoke-static {p0, p1, p2}, Lnet/minidev/asm/ConvertDate;->addHour2(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static addHour2(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 241
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 243
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-static {p0, p2, p1}, Lnet/minidev/asm/ConvertDate;->trySkip(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 249
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0xc

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_2

    .line 259
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 260
    :cond_2
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-static {p0, p2, p1}, Lnet/minidev/asm/ConvertDate;->trySkip(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 264
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0xd

    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 267
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-nez p2, :cond_4

    .line 268
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 269
    :cond_4
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-static {p0, p2, p1}, Lnet/minidev/asm/ConvertDate;->trySkip(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 273
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 275
    :cond_5
    invoke-static {p0, p2, p1}, Lnet/minidev/asm/ConvertDate;->trySkip(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    .line 280
    invoke-static {p0}, Lnet/minidev/asm/ConvertDate;->getYear(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/util/Calendar;->set(II)V

    .line 282
    :cond_6
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static convertToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 111
    :cond_0
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 112
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 113
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 114
    new-instance v0, Ljava/util/Date;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 115
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 116
    new-instance v1, Ljava/util/StringTokenizer;

    check-cast p0, Ljava/lang/String;

    const-string v2, " -/:,.+"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 120
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    invoke-static {v1, p0}, Lnet/minidev/asm/ConvertDate;->getYYYYMMDD(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 124
    :cond_4
    sget-object v2, Lnet/minidev/asm/ConvertDate;->daysTable:Ljava/util/TreeMap;

    invoke-virtual {v2, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    .line 127
    :cond_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 129
    :cond_6
    sget-object v2, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    invoke-virtual {v2, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 130
    invoke-static {v1, p0}, Lnet/minidev/asm/ConvertDate;->getMMDDYYYY(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 132
    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 133
    invoke-static {v1, p0}, Lnet/minidev/asm/ConvertDate;->getDDMMYYYY(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v0

    .line 136
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Primitive: Can not convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fillMap(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u00e9"

    const-string v1, "e"

    .line 100
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u00fb"

    const-string v1, "u"

    .line 101
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getDDMMYYYY(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .line 215
    new-instance v7, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x5

    .line 217
    invoke-virtual {v7, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 218
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 221
    invoke-static {p1}, Lnet/minidev/asm/ConvertDate;->parseMonth(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v7, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 223
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 226
    invoke-static {p1}, Lnet/minidev/asm/ConvertDate;->getYear(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 227
    invoke-static {p0, v7, v0}, Lnet/minidev/asm/ConvertDate;->addHour(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static getMMDDYYYY(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .line 181
    new-instance v7, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 182
    sget-object v0, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {v7, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 186
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 188
    :cond_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x5

    .line 191
    invoke-virtual {v7, v2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 193
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 195
    :cond_1
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 199
    :cond_2
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 201
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    .line 202
    invoke-static {p1}, Lnet/minidev/asm/ConvertDate;->getYear(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 204
    invoke-static {p0, v7, p1}, Lnet/minidev/asm/ConvertDate;->addHour2(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 210
    :cond_5
    :goto_0
    invoke-static {p0, v7, v1}, Lnet/minidev/asm/ConvertDate;->addHour(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 184
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can not parse "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as month"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMonth(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 27
    sget-object v0, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static getYYYYMMDD(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .line 140
    new-instance v7, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    const-wide/16 v0, 0x0

    .line 141
    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 144
    invoke-virtual {v7, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 145
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lnet/minidev/asm/ConvertDate;->parseMonth(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {v7, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 150
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x54

    if-ne v2, v4, :cond_2

    .line 157
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    invoke-virtual {v7, v3, v0}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x3

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v7, p1}, Lnet/minidev/asm/ConvertDate;->addHour(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 161
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 162
    invoke-virtual {v7, v3, p1}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 p1, 0x0

    .line 163
    invoke-static {p0, v7, p1}, Lnet/minidev/asm/ConvertDate;->addHour(Ljava/util/StringTokenizer;Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 165
    :cond_3
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 1

    .line 169
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_1

    const/16 v0, 0x17

    if-le p0, v0, :cond_0

    add-int/lit16 p0, p0, 0x7d0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, 0x76c

    :cond_1
    :goto_0
    return p0
.end method

.method private static parseMonth(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lnet/minidev/asm/ConvertDate;->monthsTable:Ljava/util/TreeMap;

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as month"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static trySkip(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 294
    :goto_0
    sget-object v0, Lnet/minidev/asm/ConvertDate;->timeZoneMapping:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 297
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Lnet/minidev/asm/ConvertDate;->voidData:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pm"

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p2, v2, v0}, Ljava/util/Calendar;->add(II)V

    :cond_2
    const-string v0, "am"

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 306
    invoke-virtual {p2, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 307
    :cond_3
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_4

    return-object v1

    .line 309
    :cond_4
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    return-object p1
.end method
