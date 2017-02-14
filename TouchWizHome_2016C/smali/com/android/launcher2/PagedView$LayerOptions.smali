.class public final enum Lcom/android/launcher2/PagedView$LayerOptions;
.super Ljava/lang/Enum;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LayerOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/PagedView$LayerOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/PagedView$LayerOptions;

.field public static final enum DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

.field public static final enum FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

.field public static final enum FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/PagedView$LayerOptions;

    const-string v1, "FORCE_HARDWARE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$LayerOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    new-instance v0, Lcom/android/launcher2/PagedView$LayerOptions;

    const-string v1, "FORCE_NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/PagedView$LayerOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    new-instance v0, Lcom/android/launcher2/PagedView$LayerOptions;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/PagedView$LayerOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/launcher2/PagedView$LayerOptions;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->$VALUES:[Lcom/android/launcher2/PagedView$LayerOptions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/PagedView$LayerOptions;
    .locals 1

    const-class v0, Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedView$LayerOptions;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/PagedView$LayerOptions;
    .locals 1

    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->$VALUES:[Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0}, [Lcom/android/launcher2/PagedView$LayerOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/PagedView$LayerOptions;

    return-object v0
.end method
