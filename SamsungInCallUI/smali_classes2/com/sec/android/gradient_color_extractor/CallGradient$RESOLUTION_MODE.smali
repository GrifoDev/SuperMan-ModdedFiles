.class public final enum Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;
.super Ljava/lang/Enum;
.source "CallGradient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/CallGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESOLUTION_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

.field public static final enum FHD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

.field public static final enum HD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

.field public static final enum QHD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    const-string v1, "HD"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->HD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    const-string v1, "FHD"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->FHD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    const-string v1, "QHD"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->QHD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    sget-object v1, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->HD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->FHD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->QHD:Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->$VALUES:[Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->$VALUES:[Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    invoke-virtual {v0}, [Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gradient_color_extractor/CallGradient$RESOLUTION_MODE;

    return-object v0
.end method
