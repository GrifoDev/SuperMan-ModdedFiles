.class public final enum Lcom/android/launcher2/customer/PostPosition$CONTAINER;
.super Ljava/lang/Enum;
.source "PostPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/customer/PostPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONTAINER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/customer/PostPosition$CONTAINER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/customer/PostPosition$CONTAINER;

.field public static final enum APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

.field public static final enum HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/customer/PostPosition$CONTAINER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    new-instance v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    const-string v1, "APPS"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/customer/PostPosition$CONTAINER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    sget-object v1, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->$VALUES:[Lcom/android/launcher2/customer/PostPosition$CONTAINER;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/customer/PostPosition$CONTAINER;
    .locals 1

    const-class v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/customer/PostPosition$CONTAINER;
    .locals 1

    sget-object v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->$VALUES:[Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    invoke-virtual {v0}, [Lcom/android/launcher2/customer/PostPosition$CONTAINER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    return-object v0
.end method
