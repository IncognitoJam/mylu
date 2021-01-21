.class final Lcom/google/android/gms/internal/vision/zzgh;
.super Lcom/google/android/gms/internal/vision/zzgf;
.source "com.google.android.gms:play-services-vision-common@@19.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgf<",
        "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgf;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 160
    iget p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    return p1
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzic;I)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzgd;->zza(Lcom/google/android/gms/internal/vision/zzic;I)Lcom/google/android/gms/internal/vision/zzgs$zzg;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzis;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzgi;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzis;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/vision/zzjj<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 10
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 12
    iget-object v1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 13
    iget-boolean v1, v1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwo:Z

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 15
    iget-boolean v1, v1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    if-eqz v1, :cond_0

    .line 18
    sget-object p3, Lcom/google/android/gms/internal/vision/zzgg;->zzrx:[I

    .line 19
    iget-object v1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 20
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzka;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    .line 82
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 83
    iget-object p2, p2, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x17

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Type cannot be packed: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzl(Ljava/util/List;)V

    .line 76
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 77
    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwm:Lcom/google/android/gms/internal/vision/zzgv;

    .line 79
    invoke-static {v0, p3, p1, p5, p6}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzgv;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object p5

    goto/16 :goto_0

    .line 70
    :pswitch_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 66
    :pswitch_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzo(Ljava/util/List;)V

    goto :goto_0

    .line 62
    :pswitch_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzn(Ljava/util/List;)V

    goto :goto_0

    .line 58
    :pswitch_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzm(Ljava/util/List;)V

    goto :goto_0

    .line 54
    :pswitch_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzk(Ljava/util/List;)V

    goto :goto_0

    .line 50
    :pswitch_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzh(Ljava/util/List;)V

    goto :goto_0

    .line 46
    :pswitch_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzg(Ljava/util/List;)V

    goto :goto_0

    .line 42
    :pswitch_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzf(Ljava/util/List;)V

    goto :goto_0

    .line 38
    :pswitch_9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zze(Ljava/util/List;)V

    goto :goto_0

    .line 34
    :pswitch_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzc(Ljava/util/List;)V

    goto :goto_0

    .line 30
    :pswitch_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzd(Ljava/util/List;)V

    goto :goto_0

    .line 26
    :pswitch_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzb(Ljava/util/List;)V

    goto :goto_0

    .line 22
    :pswitch_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/util/List;)V

    .line 85
    :goto_0
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 89
    iget-object v2, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 90
    iget-object v2, v2, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 91
    sget-object v3, Lcom/google/android/gms/internal/vision/zzka;->zzacf:Lcom/google/android/gms/internal/vision/zzka;

    if-ne v2, v3, :cond_2

    .line 92
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdy()I

    move-result p1

    .line 93
    iget-object p3, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 94
    iget-object p3, p3, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwm:Lcom/google/android/gms/internal/vision/zzgv;

    .line 95
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/vision/zzgv;->zzh(I)Lcom/google/android/gms/internal/vision/zzgw;

    move-result-object p3

    if-nez p3, :cond_1

    .line 97
    invoke-static {v0, p1, p5, p6}, Lcom/google/android/gms/internal/vision/zzit;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    .line 100
    :cond_2
    sget-object p6, Lcom/google/android/gms/internal/vision/zzgg;->zzrx:[I

    .line 101
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 102
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzka;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_1

    goto/16 :goto_1

    .line 140
    :pswitch_e
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxg:Lcom/google/android/gms/internal/vision/zzic;

    .line 141
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 142
    invoke-interface {p1, p6, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 135
    :pswitch_f
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxg:Lcom/google/android/gms/internal/vision/zzic;

    .line 136
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 137
    invoke-interface {p1, p6, p3}, Lcom/google/android/gms/internal/vision/zzis;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    .line 132
    :pswitch_10
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->readString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 120
    :pswitch_11
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v1

    goto/16 :goto_1

    .line 144
    :pswitch_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :pswitch_13
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzej()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_1

    .line 128
    :pswitch_14
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzei()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 126
    :pswitch_15
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzeh()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 124
    :pswitch_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzeg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 122
    :pswitch_17
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzee()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 118
    :pswitch_18
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzeb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 116
    :pswitch_19
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzea()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 114
    :pswitch_1a
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 112
    :pswitch_1b
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 110
    :pswitch_1c
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 108
    :pswitch_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->zzdx()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 106
    :pswitch_1e
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 104
    :pswitch_1f
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzis;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 146
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwo:Z

    if-eqz p1, :cond_3

    .line 148
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1, v1}, Lcom/google/android/gms/internal/vision/zzgi;->zzb(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    goto :goto_3

    .line 149
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzgg;->zzrx:[I

    .line 150
    iget-object p3, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 151
    iget-object p3, p3, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 152
    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/zzka;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/16 p3, 0x11

    if-eq p1, p3, :cond_4

    const/16 p3, 0x12

    if-eq p1, p3, :cond_4

    goto :goto_2

    .line 153
    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 155
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/zzgt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 156
    :cond_5
    :goto_2
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1, v1}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    :goto_3
    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzfh;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzgi;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzfh;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    .line 386
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxg:Lcom/google/android/gms/internal/vision/zzic;

    .line 387
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzic;->zzgj()Lcom/google/android/gms/internal/vision/zzib;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzib;->zzgb()Lcom/google/android/gms/internal/vision/zzic;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzfh;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 391
    sget-object p1, Lcom/google/android/gms/internal/vision/zzgt;->zzxi:[B

    goto :goto_0

    .line 392
    :cond_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 393
    invoke-virtual {p1, v2, v3, v3, v1}, Lcom/google/android/gms/internal/vision/zzfh;->zza([BIII)V

    move-object p1, v2

    .line 395
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    new-instance v1, Lcom/google/android/gms/internal/vision/zzfg;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/vision/zzfg;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 400
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    .line 401
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzin;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V

    .line 402
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p1, v0}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    .line 403
    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/zzis;->zzdu()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_1

    return-void

    .line 404
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgq()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1

    .line 398
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Direct buffers not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzis;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzgd;Lcom/google/android/gms/internal/vision/zzgi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzis;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;

    .line 380
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxg:Lcom/google/android/gms/internal/vision/zzic;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/google/android/gms/internal/vision/zzis;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    .line 382
    iget-object p2, p2, Lcom/google/android/gms/internal/vision/zzgs$zzg;->zzxh:Lcom/google/android/gms/internal/vision/zzgs$zzd;

    invoke-virtual {p4, p2, p1}, Lcom/google/android/gms/internal/vision/zzgi;->zza(Lcom/google/android/gms/internal/vision/zzgk;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzkg;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzkg;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;

    .line 165
    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwo:Z

    if-eqz v1, :cond_2

    .line 167
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgg;->zzrx:[I

    .line 168
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzka;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 287
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 292
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 293
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    .line 294
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_0

    .line 278
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 279
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 283
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 284
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object v1

    .line 285
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Lcom/google/android/gms/internal/vision/zzir;)V

    :cond_0
    return-void

    .line 274
    :pswitch_2
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 275
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 276
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void

    .line 227
    :pswitch_3
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 228
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 229
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;)V

    return-void

    .line 267
    :pswitch_4
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 269
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 270
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 271
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 260
    :pswitch_5
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 262
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 263
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 264
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 253
    :pswitch_6
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 255
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 256
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 257
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 246
    :pswitch_7
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 248
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 249
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 250
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 239
    :pswitch_8
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 241
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 242
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 243
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 232
    :pswitch_9
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 234
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 235
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 236
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 220
    :pswitch_a
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 222
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 223
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 224
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 213
    :pswitch_b
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 215
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 216
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 217
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 206
    :pswitch_c
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 208
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 209
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 210
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 199
    :pswitch_d
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 201
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 202
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 203
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 192
    :pswitch_e
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 194
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 195
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 196
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 185
    :pswitch_f
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 187
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 188
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 189
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 178
    :pswitch_10
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 180
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 181
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 182
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    return-void

    .line 171
    :pswitch_11
    iget v1, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 173
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 174
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwp:Z

    .line 175
    invoke-static {v1, p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzit;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzkg;Z)V

    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/vision/zzgg;->zzrx:[I

    .line 297
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->zzwn:Lcom/google/android/gms/internal/vision/zzka;

    .line 298
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzka;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 371
    :pswitch_12
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 373
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 374
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p2

    .line 375
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    goto/16 :goto_1

    .line 364
    :pswitch_13
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 366
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 367
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p2

    .line 368
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzir;)V

    return-void

    .line 360
    :pswitch_14
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 361
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILjava/lang/String;)V

    return-void

    .line 332
    :pswitch_15
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 333
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/zzfh;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ILcom/google/android/gms/internal/vision/zzfh;)V

    return-void

    .line 356
    :pswitch_16
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 357
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzg(II)V

    return-void

    .line 352
    :pswitch_17
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 353
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzb(IJ)V

    return-void

    .line 348
    :pswitch_18
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 349
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(II)V

    return-void

    .line 344
    :pswitch_19
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 345
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(IJ)V

    return-void

    .line 340
    :pswitch_1a
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 341
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzq(II)V

    return-void

    .line 336
    :pswitch_1b
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 337
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzh(II)V

    return-void

    .line 328
    :pswitch_1c
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 329
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IZ)V

    return-void

    .line 324
    :pswitch_1d
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 325
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzj(II)V

    return-void

    .line 320
    :pswitch_1e
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 321
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzc(IJ)V

    return-void

    .line 316
    :pswitch_1f
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 317
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zzg(II)V

    return-void

    .line 312
    :pswitch_20
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 313
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IJ)V

    return-void

    .line 308
    :pswitch_21
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 309
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zzi(IJ)V

    return-void

    .line 304
    :pswitch_22
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 305
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(IF)V

    return-void

    .line 300
    :pswitch_23
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzgs$zzd;->number:I

    .line 301
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzkg;->zza(ID)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method final zze(Lcom/google/android/gms/internal/vision/zzic;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    return p1
.end method

.method final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzwq:Lcom/google/android/gms/internal/vision/zzgi;

    return-object p1
.end method

.method final zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzgi<",
            "Lcom/google/android/gms/internal/vision/zzgs$zzd;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgs$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzgs$zze;->zzgk()Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p1

    return-object p1
.end method

.method final zzh(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzgf;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzgi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzgi;->zzdp()V

    return-void
.end method
