.class public final enum Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;
.super Ljava/lang/Enum;
.source "VirtualTourDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetadataFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

.field public static final enum RAW_BINARY:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

.field public static final enum STRUCTURED_XML:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    const-string/jumbo v1, "RAW_BINARY"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->RAW_BINARY:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    const-string/jumbo v1, "STRUCTURED_XML"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->STRUCTURED_XML:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    sget-object v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->RAW_BINARY:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->STRUCTURED_XML:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->$VALUES:[Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->$VALUES:[Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    return-object v0
.end method
