.class public abstract Lcom/drew/metadata/Directory;
.super Ljava/lang/Object;
.source "Directory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final _floatFormatPattern:Ljava/lang/String; = "0.###"


# instance fields
.field protected final _definedTagList:Ljava/util/Collection;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/drew/metadata/Tag;",
            ">;"
        }
    .end annotation
.end field

.field protected _descriptor:Lcom/drew/metadata/TagDescriptor;

.field private final _errorList:Ljava/util/Collection;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _parent:Lcom/drew/metadata/Directory;
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation
.end field

.field protected final _tagMap:Ljava/util/Map;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 154
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsTag(I)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .line 790
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getBooleanObject(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 793
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tag \'"

    if-nez v0, :cond_1

    .line 795
    new-instance v0, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be converted to a boolean.  It is of type \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBooleanObject(I)Ljava/lang/Boolean;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .annotation build Lcom/drew/lang/annotations/SuppressWarnings;
        justification = "keep API interface consistent"
        value = "NP_BOOLEAN_RETURN_NULL"
    .end annotation

    .line 804
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 807
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 808
    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 809
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_5

    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 816
    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 817
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    .line 811
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getByteArray(I)[B
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 636
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 639
    :cond_0
    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_1

    .line 640
    check-cast p1, Lcom/drew/metadata/StringValue;

    invoke-virtual {p1}, Lcom/drew/metadata/StringValue;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 641
    :cond_1
    instance-of v1, p1, [Lcom/drew/lang/Rational;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 642
    check-cast p1, [Lcom/drew/lang/Rational;

    check-cast p1, [Lcom/drew/lang/Rational;

    .line 643
    array-length v0, p1

    new-array v0, v0, [B

    .line 644
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 645
    aget-object v1, p1, v2

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->byteValue()B

    move-result v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 648
    :cond_3
    instance-of v1, p1, [B

    if-eqz v1, :cond_4

    .line 649
    check-cast p1, [B

    check-cast p1, [B

    return-object p1

    .line 650
    :cond_4
    instance-of v1, p1, [I

    if-eqz v1, :cond_6

    .line 651
    check-cast p1, [I

    check-cast p1, [I

    .line 652
    array-length v0, p1

    new-array v0, v0, [B

    .line 653
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_5

    .line 654
    aget v1, p1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0

    .line 657
    :cond_6
    instance-of v1, p1, [S

    if-eqz v1, :cond_8

    .line 658
    check-cast p1, [S

    check-cast p1, [S

    .line 659
    array-length v0, p1

    new-array v0, v0, [B

    .line 660
    :goto_2
    array-length v1, p1

    if-ge v2, v1, :cond_7

    .line 661
    aget-short v1, p1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    .line 664
    :cond_8
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    .line 665
    check-cast p1, Ljava/lang/CharSequence;

    .line 666
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 667
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 668
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    return-object v0

    .line 672
    :cond_a
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    .line 673
    new-array v0, v0, [B

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    aput-byte p1, v0, v2

    :cond_b
    return-object v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0, p1, v0, v0}, Lcom/drew/metadata/Directory;->getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 16
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/TimeZone;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 864
    invoke-virtual/range {p0 .. p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 866
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 867
    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 871
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p2

    :cond_2
    move-object v0, v2

    goto/16 :goto_5

    :cond_3
    :goto_0
    const-string/jumbo v3, "yyyy:MM:dd HH:mm:ss"

    const-string/jumbo v4, "yyyy:MM:dd HH:mm"

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    const-string/jumbo v6, "yyyy-MM-dd HH:mm"

    const-string/jumbo v7, "yyyy.MM.dd HH:mm:ss"

    const-string/jumbo v8, "yyyy.MM.dd HH:mm"

    const-string/jumbo v9, "yyyy-MM-dd\'T\'HH:mm:ss"

    const-string/jumbo v10, "yyyy-MM-dd\'T\'HH:mm"

    const-string/jumbo v11, "yyyy-MM-dd"

    const-string/jumbo v12, "yyyy-MM"

    const-string/jumbo v13, "yyyyMMdd"

    const-string/jumbo v14, "yyyy"

    .line 874
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "(\\d\\d:\\d\\d:\\d\\d)(\\.\\d+)"

    .line 891
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 892
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 893
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x2

    .line 894
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "$1"

    .line 895
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    move-object v3, v0

    move-object v0, v15

    goto :goto_1

    :cond_4
    move-object/from16 v3, p2

    :goto_1
    const-string v4, "(Z|[+-]\\d\\d:\\d\\d)$"

    .line 899
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 900
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 901
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const-string v6, "GMT"

    if-eqz v5, :cond_5

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    const-string v8, "Z"

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 903
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v0

    move-object/from16 v0, p3

    .line 906
    :goto_2
    array-length v5, v1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_2

    aget-object v8, v1, v7

    .line 908
    :try_start_0
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    .line 910
    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_4

    .line 912
    :cond_6
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 914
    :goto_4
    invoke-virtual {v9, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :goto_5
    if-nez v0, :cond_7

    return-object v2

    :cond_7
    if-nez v3, :cond_8

    return-object v0

    .line 929
    :cond_8
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    if-ltz v1, :cond_9

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_9

    .line 931
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 932
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0xe

    .line 933
    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 934
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    return-object v0
.end method

.method public getDate(ILjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .param p2    # Ljava/util/TimeZone;
        .annotation build Lcom/drew/lang/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0, p1, v0, p2}, Lcom/drew/metadata/Directory;->getDate(ILjava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1147
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tag \'"

    if-nez v0, :cond_1

    .line 686
    new-instance v0, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be converted to a double.  It is of type \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDoubleObject(I)Ljava/lang/Double;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 693
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 696
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 703
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 704
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 698
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getErrorCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getErrors()Ljava/lang/Iterable;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .line 712
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getFloatObject(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 715
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tag \'"

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be converted to a float.  It is of type \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFloatObject(I)Ljava/lang/Float;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 725
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 728
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 735
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 736
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 730
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getInt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .line 434
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tag \'"

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be converted to int.  It is of type \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntArray(I)[I
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 583
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 586
    :cond_0
    instance-of v1, p1, [I

    if-eqz v1, :cond_1

    .line 587
    check-cast p1, [I

    check-cast p1, [I

    return-object p1

    .line 588
    :cond_1
    instance-of v1, p1, [Lcom/drew/lang/Rational;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 589
    check-cast p1, [Lcom/drew/lang/Rational;

    check-cast p1, [Lcom/drew/lang/Rational;

    .line 590
    array-length v0, p1

    new-array v0, v0, [I

    .line 591
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 592
    aget-object v1, p1, v2

    invoke-virtual {v1}, Lcom/drew/lang/Rational;->intValue()I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 596
    :cond_3
    instance-of v1, p1, [S

    if-eqz v1, :cond_5

    .line 597
    check-cast p1, [S

    check-cast p1, [S

    .line 598
    array-length v0, p1

    new-array v0, v0, [I

    .line 599
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_4

    .line 600
    aget-short v1, p1, v2

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 604
    :cond_5
    instance-of v1, p1, [B

    if-eqz v1, :cond_7

    .line 605
    check-cast p1, [B

    check-cast p1, [B

    .line 606
    array-length v0, p1

    new-array v0, v0, [I

    .line 607
    :goto_2
    array-length v1, p1

    if-ge v2, v1, :cond_6

    .line 608
    aget-byte v1, p1, v2

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object v0

    .line 612
    :cond_7
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    .line 613
    check-cast p1, Ljava/lang/CharSequence;

    .line 614
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 615
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 616
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-object v0

    .line 620
    :cond_9
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 621
    new-array v0, v0, [I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v2

    :cond_a
    return-object v0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 462
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 467
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 468
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 469
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 483
    :cond_2
    instance-of v1, p1, [Lcom/drew/lang/Rational;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 484
    check-cast p1, [Lcom/drew/lang/Rational;

    check-cast p1, [Lcom/drew/lang/Rational;

    .line 485
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 486
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 487
    :cond_3
    instance-of v1, p1, [B

    if-eqz v1, :cond_4

    .line 488
    check-cast p1, [B

    check-cast p1, [B

    .line 489
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 490
    aget-byte p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 491
    :cond_4
    instance-of v1, p1, [I

    if-eqz v1, :cond_5

    .line 492
    check-cast p1, [I

    check-cast p1, [I

    .line 493
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 494
    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 495
    :cond_5
    instance-of v1, p1, [S

    if-eqz v1, :cond_6

    .line 496
    check-cast p1, [S

    check-cast p1, [S

    .line 497
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 498
    aget-short p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0

    .line 471
    :cond_7
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 474
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 477
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_8

    aget-byte v4, p1, v2

    const/16 v5, 0x8

    shl-long/2addr v0, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    long-to-int p1, v0

    .line 481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .line 743
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getLongObject(I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 746
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tag \'"

    if-nez v0, :cond_1

    .line 748
    new-instance v0, Lcom/drew/metadata/MetadataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getTagName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has not been set -- check using containsTag() first"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_1
    new-instance v2, Lcom/drew/metadata/MetadataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be converted to a long.  It is of type \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/drew/metadata/MetadataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongObject(I)Ljava/lang/Long;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 756
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 759
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 760
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 761
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_7

    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 767
    :cond_2
    instance-of v1, p1, [Lcom/drew/lang/Rational;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 768
    check-cast p1, [Lcom/drew/lang/Rational;

    check-cast p1, [Lcom/drew/lang/Rational;

    .line 769
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 770
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/drew/lang/Rational;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 771
    :cond_3
    instance-of v1, p1, [B

    if-eqz v1, :cond_4

    .line 772
    check-cast p1, [B

    check-cast p1, [B

    .line 773
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 774
    aget-byte p1, p1, v2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 775
    :cond_4
    instance-of v1, p1, [I

    if-eqz v1, :cond_5

    .line 776
    check-cast p1, [I

    check-cast p1, [I

    .line 777
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 778
    aget p1, p1, v2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 779
    :cond_5
    instance-of v1, p1, [S

    if-eqz v1, :cond_6

    .line 780
    check-cast p1, [S

    check-cast p1, [S

    .line 781
    array-length v1, p1

    if-ne v1, v3, :cond_6

    .line 782
    aget-short p1, p1, v2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0

    .line 763
    :cond_7
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getParent()Lcom/drew/metadata/Directory;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_parent:Lcom/drew/metadata/Directory;

    return-object v0
.end method

.method public getRational(I)Lcom/drew/lang/Rational;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 946
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 951
    :cond_0
    instance-of v1, p1, Lcom/drew/lang/Rational;

    if-eqz v1, :cond_1

    .line 952
    check-cast p1, Lcom/drew/lang/Rational;

    return-object p1

    .line 953
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_2

    .line 954
    new-instance v0, Lcom/drew/lang/Rational;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/drew/lang/Rational;-><init>(JJ)V

    return-object v0

    .line 955
    :cond_2
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 956
    new-instance v0, Lcom/drew/lang/Rational;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/drew/lang/Rational;-><init>(JJ)V

    :cond_3
    return-object v0
.end method

.method public getRationalArray(I)[Lcom/drew/lang/Rational;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 967
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 971
    :cond_0
    instance-of v1, p1, [Lcom/drew/lang/Rational;

    if-eqz v1, :cond_1

    .line 972
    check-cast p1, [Lcom/drew/lang/Rational;

    check-cast p1, [Lcom/drew/lang/Rational;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 11
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 987
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 991
    :cond_0
    instance-of v0, p1, Lcom/drew/lang/Rational;

    if-eqz v0, :cond_1

    .line 992
    check-cast p1, Lcom/drew/lang/Rational;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 994
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "0.###"

    if-eqz v0, :cond_13

    .line 996
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 997
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    const-class v4, Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    :goto_0
    if-ge v6, v0, :cond_12

    if-eqz v6, :cond_2

    .line 1005
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1006
    :cond_2
    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1008
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "int"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    if-ge v6, v0, :cond_12

    if-eqz v6, :cond_4

    .line 1011
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1012
    :cond_4
    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1014
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "short"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    if-ge v6, v0, :cond_12

    if-eqz v6, :cond_6

    .line 1017
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1018
    :cond_6
    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1020
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "long"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    if-ge v6, v0, :cond_12

    if-eqz v6, :cond_8

    .line 1023
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1024
    :cond_8
    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1026
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "float"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "0"

    const-string v8, "-0"

    if-eqz v4, :cond_c

    .line 1027
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_4
    if-ge v6, v0, :cond_12

    if-eqz v6, :cond_a

    .line 1030
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1031
    :cond_a
    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v1

    float-to-double v9, v1

    invoke-virtual {v2, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v1, v7

    :cond_b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1034
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "double"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1035
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :goto_5
    if-ge v6, v0, :cond_12

    if-eqz v6, :cond_d

    .line 1038
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1039
    :cond_d
    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v1, v7

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1042
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "byte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_6
    if-ge v6, v0, :cond_12

    if-eqz v6, :cond_10

    .line 1045
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1046
    :cond_10
    invoke-static {p1, v6}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1049
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected array component type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 1052
    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1055
    :cond_13
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_14

    .line 1056
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1058
    :cond_14
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_15

    .line 1059
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1065
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1071
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getByteArray(I)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1075
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 513
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 516
    :cond_0
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 517
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 518
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 519
    new-array v0, v2, [Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    aput-object p1, v0, v3

    return-object v0

    .line 520
    :cond_2
    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_3

    .line 521
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    .line 522
    :cond_3
    instance-of v1, p1, [Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_5

    .line 523
    check-cast p1, [Lcom/drew/metadata/StringValue;

    check-cast p1, [Lcom/drew/metadata/StringValue;

    .line 524
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 525
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_4

    .line 526
    aget-object v1, p1, v3

    invoke-virtual {v1}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 529
    :cond_5
    instance-of v1, p1, [I

    if-eqz v1, :cond_7

    .line 530
    check-cast p1, [I

    check-cast p1, [I

    .line 531
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 532
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_6

    .line 533
    aget v1, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v0

    .line 536
    :cond_7
    instance-of v1, p1, [B

    if-eqz v1, :cond_9

    .line 537
    check-cast p1, [B

    check-cast p1, [B

    .line 538
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 539
    :goto_2
    array-length v1, v0

    if-ge v3, v1, :cond_8

    .line 540
    aget-byte v1, p1, v3

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-object v0

    .line 543
    :cond_9
    instance-of v1, p1, [Lcom/drew/lang/Rational;

    if-eqz v1, :cond_a

    .line 544
    check-cast p1, [Lcom/drew/lang/Rational;

    check-cast p1, [Lcom/drew/lang/Rational;

    .line 545
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 546
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 547
    aget-object v2, p1, v1

    invoke-virtual {v2, v3}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    return-object v0
.end method

.method public getStringValue(I)Lcom/drew/metadata/StringValue;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 1084
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    .line 1085
    instance-of v0, p1, Lcom/drew/metadata/StringValue;

    if-eqz v0, :cond_0

    .line 1086
    check-cast p1, Lcom/drew/metadata/StringValue;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStringValueArray(I)[Lcom/drew/metadata/StringValue;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 563
    invoke-virtual {p0, p1}, Lcom/drew/metadata/Directory;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 566
    :cond_0
    instance-of v1, p1, [Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_1

    .line 567
    check-cast p1, [Lcom/drew/metadata/StringValue;

    check-cast p1, [Lcom/drew/metadata/StringValue;

    return-object p1

    .line 568
    :cond_1
    instance-of v1, p1, Lcom/drew/metadata/StringValue;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 569
    new-array v0, v0, [Lcom/drew/metadata/StringValue;

    const/4 v1, 0x0

    check-cast p1, Lcom/drew/metadata/StringValue;

    aput-object p1, v0, v1

    :cond_2
    return-object v0
.end method

.method public getTagCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .line 1114
    invoke-virtual {p0}, Lcom/drew/metadata/Directory;->getTagNameMap()Ljava/util/HashMap;

    move-result-object v0

    .line 1115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1116
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1117
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1122
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected abstract getTagNameMap()Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getTags()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/drew/metadata/Tag;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTagName(I)Z
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lcom/drew/metadata/Directory;->getTagNameMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_errorList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBoolean(IZ)V
    .locals 0

    .line 321
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setByteArray(I[B)V
    .locals 0
    .param p2    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setDate(ILjava/util/Date;)V
    .locals 0
    .param p2    # Ljava/util/Date;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setDescriptor(Lcom/drew/metadata/TagDescriptor;)V
    .locals 1
    .param p1    # Lcom/drew/metadata/TagDescriptor;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 144
    iput-object p1, p0, Lcom/drew/metadata/Directory;->_descriptor:Lcom/drew/metadata/TagDescriptor;

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cannot set a null descriptor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDouble(ID)V
    .locals 0

    .line 249
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setDoubleArray(I[D)V
    .locals 0
    .param p2    # [D
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 0

    .line 227
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setFloatArray(I[F)V
    .locals 0
    .param p2    # [F
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setInt(II)V
    .locals 0

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setIntArray(I[I)V
    .locals 0
    .param p2    # [I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 0

    .line 332
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    .line 392
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_definedTagList:Ljava/util/Collection;

    new-instance v1, Lcom/drew/metadata/Tag;

    invoke-direct {v1, p1, p0}, Lcom/drew/metadata/Tag;-><init>(ILcom/drew/metadata/Directory;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 390
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cannot set a null object"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectArray(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setParent(Lcom/drew/metadata/Directory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/Directory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 192
    iput-object p1, p0, Lcom/drew/metadata/Directory;->_parent:Lcom/drew/metadata/Directory;

    return-void
.end method

.method public setRational(ILcom/drew/lang/Rational;)V
    .locals 0
    .param p2    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setRationalArray(I[Lcom/drew/lang/Rational;)V
    .locals 0
    .param p2    # [Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void

    .line 287
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cannot set a null String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStringArray(I[Ljava/lang/String;)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public setStringValue(ILcom/drew/metadata/StringValue;)V
    .locals 0
    .param p2    # Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObject(ILjava/lang/Object;)V

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cannot set a null StringValue"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStringValueArray(I[Lcom/drew/metadata/StringValue;)V
    .locals 0
    .param p2    # [Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 1153
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/drew/metadata/Directory;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/drew/metadata/Directory;->_tagMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "tag"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "tags"

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s Directory (%d %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
