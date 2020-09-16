.class public Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusEquipmentMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final _olympusExtenderTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final _olympusLensTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusExtenderTypes:Ljava/util/HashMap;

    .line 269
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v1, "None"

    const-string v2, "0 00 00"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 01 00"

    const-string v3, "Olympus Zuiko Digital ED 50mm F2.0 Macro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 01 01"

    const-string v3, "Olympus Zuiko Digital 40-150mm F3.5-4.5"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 01 10"

    const-string v3, "Olympus M.Zuiko Digital ED 14-42mm F3.5-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 02 00"

    const-string v3, "Olympus Zuiko Digital ED 150mm F2.0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 02 10"

    const-string v3, "Olympus M.Zuiko Digital 17mm F2.8 Pancake"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 03 00"

    const-string v3, "Olympus Zuiko Digital ED 300mm F2.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 03 10"

    const-string v3, "Olympus M.Zuiko Digital ED 14-150mm F4.0-5.6 [II]"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 04 10"

    const-string v3, "Olympus M.Zuiko Digital ED 9-18mm F4.0-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 05 00"

    const-string v3, "Olympus Zuiko Digital 14-54mm F2.8-3.5"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 05 01"

    const-string v3, "Olympus Zuiko Digital Pro ED 90-250mm F2.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 05 10"

    const-string v3, "Olympus M.Zuiko Digital ED 14-42mm F3.5-5.6 L"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 06 00"

    const-string v3, "Olympus Zuiko Digital ED 50-200mm F2.8-3.5"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 06 01"

    const-string v3, "Olympus Zuiko Digital ED 8mm F3.5 Fisheye"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 06 10"

    const-string v3, "Olympus M.Zuiko Digital ED 40-150mm F4.0-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 07 00"

    const-string v3, "Olympus Zuiko Digital 11-22mm F2.8-3.5"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 07 01"

    const-string v3, "Olympus Zuiko Digital 18-180mm F3.5-6.3"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 07 10"

    const-string v3, "Olympus M.Zuiko Digital ED 12mm F2.0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 08 01"

    const-string v3, "Olympus Zuiko Digital 70-300mm F4.0-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 08 10"

    const-string v3, "Olympus M.Zuiko Digital ED 75-300mm F4.8-6.7"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 09 10"

    const-string v3, "Olympus M.Zuiko Digital 14-42mm F3.5-5.6 II"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 10 01"

    const-string v3, "Kenko Tokina Reflex 300mm F6.3 MF Macro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 10 10"

    const-string v3, "Olympus M.Zuiko Digital ED 12-50mm F3.5-6.3 EZ"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 11 10"

    const-string v3, "Olympus M.Zuiko Digital 45mm F1.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 12 10"

    const-string v3, "Olympus M.Zuiko Digital ED 60mm F2.8 Macro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 13 10"

    const-string v3, "Olympus M.Zuiko Digital 14-42mm F3.5-5.6 II R"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 14 10"

    const-string v3, "Olympus M.Zuiko Digital ED 40-150mm F4.0-5.6 R"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 15 00"

    const-string v3, "Olympus Zuiko Digital ED 7-14mm F4.0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 15 10"

    const-string v3, "Olympus M.Zuiko Digital ED 75mm F1.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 16 10"

    const-string v3, "Olympus M.Zuiko Digital 17mm F1.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 17 00"

    const-string v3, "Olympus Zuiko Digital Pro ED 35-100mm F2.0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 18 00"

    const-string v3, "Olympus Zuiko Digital 14-45mm F3.5-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 18 10"

    const-string v3, "Olympus M.Zuiko Digital ED 75-300mm F4.8-6.7 II"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 19 10"

    const-string v3, "Olympus M.Zuiko Digital ED 12-40mm F2.8 Pro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 20 00"

    const-string v3, "Olympus Zuiko Digital 35mm F3.5 Macro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 20 10"

    const-string v3, "Olympus M.Zuiko Digital ED 40-150mm F2.8 Pro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 21 10"

    const-string v3, "Olympus M.Zuiko Digital ED 14-42mm F3.5-5.6 EZ"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 22 00"

    const-string v3, "Olympus Zuiko Digital 17.5-45mm F3.5-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 22 10"

    const-string v3, "Olympus M.Zuiko Digital 25mm F1.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 23 00"

    const-string v3, "Olympus Zuiko Digital ED 14-42mm F3.5-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 23 10"

    const-string v3, "Olympus M.Zuiko Digital ED 7-14mm F2.8 Pro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 24 00"

    const-string v3, "Olympus Zuiko Digital ED 40-150mm F4.0-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 24 10"

    const-string v3, "Olympus M.Zuiko Digital ED 300mm F4.0 IS Pro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 25 10"

    const-string v3, "Olympus M.Zuiko Digital ED 8mm F1.8 Fisheye Pro"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 30 00"

    const-string v3, "Olympus Zuiko Digital ED 50-200mm F2.8-3.5 SWD"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 31 00"

    const-string v3, "Olympus Zuiko Digital ED 12-60mm F2.8-4.0 SWD"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 32 00"

    const-string v3, "Olympus Zuiko Digital ED 14-35mm F2.0 SWD"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 33 00"

    const-string v3, "Olympus Zuiko Digital 25mm F2.8"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 34 00"

    const-string v3, "Olympus Zuiko Digital ED 9-18mm F4.0-5.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "0 35 00"

    const-string v3, "Olympus Zuiko Digital 14-54mm F2.8-3.5 II"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 01 00"

    const-string v3, "Sigma 18-50mm F3.5-5.6 DC"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 01 10"

    const-string v3, "Sigma 30mm F2.8 EX DN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 02 00"

    const-string v3, "Sigma 55-200mm F4.0-5.6 DC"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 02 10"

    const-string v3, "Sigma 19mm F2.8 EX DN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "Sigma 18-125mm F3.5-5.6 DC"

    const-string v3, "1 03 00"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v3, "1 03 10"

    const-string v4, "Sigma 30mm F2.8 DN | A"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v3, "1 04 00"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 04 10"

    const-string v3, "Sigma 19mm F2.8 DN | A"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "Sigma 30mm F1.4 EX DC HSM"

    const-string v3, "1 05 00"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v3, "1 05 10"

    const-string v4, "Sigma 60mm F2.8 DN | A"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v3, "Sigma APO 50-500mm F4.0-6.3 EX DG HSM"

    const-string v4, "1 06 00"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "1 07 00"

    const-string v5, "Sigma Macro 105mm F2.8 EX DG"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "1 08 00"

    const-string v5, "Sigma APO Macro 150mm F2.8 EX DG HSM"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "1 09 00"

    const-string v5, "Sigma 18-50mm F2.8 EX DC Macro"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "1 10 00"

    const-string v5, "Sigma 24mm F1.8 EX DG Aspherical Macro"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "1 11 00"

    const-string v5, "Sigma APO 135-400mm F4.5-5.6 DG"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "1 12 00"

    const-string v5, "Sigma APO 300-800mm F5.6 EX DG HSM"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "1 13 00"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 14 00"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 15 00"

    const-string v3, "Sigma 10-20mm F4.0-5.6 EX DC HSM"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 16 00"

    const-string v3, "Sigma APO 70-200mm F2.8 II EX DG Macro HSM"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "1 17 00"

    const-string v3, "Sigma 50mm F1.4 EX DG HSM"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "Leica D Vario Elmarit 14-50mm F2.8-3.5 Asph."

    const-string v3, "2 01 00"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v3, "2 01 10"

    const-string v4, "Lumix G Vario 14-45mm F3.5-5.6 Asph. Mega OIS"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v3, "Leica D Summilux 25mm F1.4 Asph."

    const-string v4, "2 02 00"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 02 10"

    const-string v5, "Lumix G Vario 45-200mm F4.0-5.6 Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 03 00"

    const-string v5, "Leica D Vario Elmar 14-50mm F3.8-5.6 Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 03 01"

    const-string v5, "Leica D Vario Elmar 14-50mm F3.8-5.6 Asph."

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 03 10"

    const-string v5, "Lumix G Vario HD 14-140mm F4.0-5.8 Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 04 00"

    const-string v5, "Leica D Vario Elmar 14-150mm F3.5-5.6"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 04 10"

    const-string v5, "Lumix G Vario 7-14mm F4.0 Asph."

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 05 10"

    const-string v5, "Lumix G 20mm F1.7 Asph."

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 06 10"

    const-string v5, "Leica DG Macro-Elmarit 45mm F2.8 Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 07 10"

    const-string v5, "Lumix G Vario 14-42mm F3.5-5.6 Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 08 10"

    const-string v5, "Lumix G Fisheye 8mm F3.5"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 09 10"

    const-string v5, "Lumix G Vario 100-300mm F4.0-5.6 Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 10 10"

    const-string v5, "Lumix G 14mm F2.5 Asph."

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 11 10"

    const-string v5, "Lumix G 12.5mm F12 3D"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 12 10"

    const-string v5, "Leica DG Summilux 25mm F1.4 Asph."

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 13 10"

    const-string v5, "Lumix G X Vario PZ 45-175mm F4.0-5.6 Asph. Power OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 14 10"

    const-string v5, "Lumix G X Vario PZ 14-42mm F3.5-5.6 Asph. Power OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 15 10"

    const-string v5, "Lumix G X Vario 12-35mm F2.8 Asph. Power OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 16 10"

    const-string v5, "Lumix G Vario 45-150mm F4.0-5.6 Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 17 10"

    const-string v5, "Lumix G X Vario 35-100mm F2.8 Power OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 18 10"

    const-string v5, "Lumix G Vario 14-42mm F3.5-5.6 II Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 19 10"

    const-string v5, "Lumix G Vario 14-140mm F3.5-5.6 Asph. Power OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 20 10"

    const-string v5, "Lumix G Vario 12-32mm F3.5-5.6 Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 21 10"

    const-string v5, "Leica DG Nocticron 42.5mm F1.2 Asph. Power OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 22 10"

    const-string v5, "Leica DG Summilux 15mm F1.7 Asph."

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 24 10"

    const-string v5, "Lumix G Macro 30mm F2.8 Asph. Mega OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "2 25 10"

    const-string v5, "Lumix G 42.5mm F1.7 Asph. Power OIS"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v4, "3 01 00"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "3 02 00"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v2, "5 01 10"

    const-string v3, "Tamron 14-150mm F3.5-5.8 Di III"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusExtenderTypes:Ljava/util/HashMap;

    const-string v2, "0 00"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusExtenderTypes:Ljava/util/HashMap;

    const-string v1, "0 04"

    const-string v2, "Olympus Zuiko Digital EC-14 1.4x Teleconverter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusExtenderTypes:Ljava/util/HashMap;

    const-string v1, "0 08"

    const-string v2, "Olympus EX-25 Extension Tube"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusExtenderTypes:Ljava/util/HashMap;

    const-string v1, "0 10"

    const-string v2, "Olympus Zuiko Digital EC-20 2.0x Teleconverter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private static CalcMaxAperture(I)D
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    int-to-double v2, p0

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getBodyFirmwareVersionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 118
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%04X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 119
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "%s.%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraType2Description()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    sget-object v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->OlympusCameraTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    sget-object v1, Lcom/drew/metadata/exif/makernotes/OlympusMakernoteDirectory;->OlympusCameraTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_9

    const/16 v0, 0x100

    if-eq p1, v0, :cond_8

    const/16 v0, 0x201

    if-eq p1, v0, :cond_7

    const/16 v0, 0x301

    if-eq p1, v0, :cond_6

    const/16 v0, 0x103

    if-eq p1, v0, :cond_5

    const/16 v0, 0x104

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getMaxApertureAtMaxFocalDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getMaxApertureAtMinFocalDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getLensFirmwareVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getFlashModelDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getFlashTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getLensPropertiesDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getMaxApertureDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getBodyFirmwareVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getFocalPlaneDiagonalDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getExtenderDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getLensTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getCameraType2Description()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getEquipmentVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x204
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEquipmentVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtenderDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x301

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, " "

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 238
    array-length v2, v0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 242
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 243
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "%X %02X"

    .line 244
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    sget-object v2, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusExtenderTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getFlashModelDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "None"

    const-string v1, "FL-20"

    const-string v2, "FL-50"

    const-string v3, "RF-11"

    const-string v4, "TF-22"

    const-string v5, "FL-36"

    const-string v6, "FL-50R"

    const-string v7, "FL-36R"

    .line 261
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const-string v0, "None"

    const/4 v1, 0x0

    const-string v2, "Simple E-System"

    const-string v3, "E-System"

    .line 254
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalPlaneDiagonalDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v2, 0x103

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensFirmwareVersionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 164
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%04X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 165
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "%s.%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensPropertiesDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x20b

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 215
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "0x%04X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLensTypeDescription()Ljava/lang/String;
    .locals 9
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, " "

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    array-length v2, v0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 148
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 149
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    .line 150
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 151
    sget-object v7, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_olympusLensTypes:Ljava/util/HashMap;

    const-string v8, "%X %02X %02X"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getMaxApertureAtMaxFocalDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->CalcMaxAperture(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApertureAtMinFocalDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->CalcMaxAperture(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxApertureDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;

    const/16 v1, 0x20a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.#"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/drew/metadata/exif/makernotes/OlympusEquipmentMakernoteDescriptor;->CalcMaxAperture(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
