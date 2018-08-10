.class public final enum Lcom/samsung/android/knox/SemPersonaState;
.super Ljava/lang/Enum;
.source "SemPersonaState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaState$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/knox/SemPersonaState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum CONTAINER_APPS_URGENT_UPDATE:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum CREATING:Lcom/samsung/android/knox/SemPersonaState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELETING:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum INVALID:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum TERMINUS:Lcom/samsung/android/knox/SemPersonaState;

.field public static final enum TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;


# instance fields
.field private knox2_0_state_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v5, v4}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "CREATING"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v7, v5}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "LOCKED"

    invoke-direct {v0, v1, v8, v7}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "SUPER_LOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "LICENSE_LOCKED"

    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "ADMIN_LOCKED"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "ADMIN_LICENSE_LOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "TERMINUS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->TERMINUS:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "DELETING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "TIMA_COMPROMISED"

    const/16 v2, 0xa

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState;

    const-string/jumbo v1, "CONTAINER_APPS_URGENT_UPDATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/SemPersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->CONTAINER_APPS_URGENT_UPDATE:Lcom/samsung/android/knox/SemPersonaState;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/samsung/android/knox/SemPersonaState;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->TERMINUS:Lcom/samsung/android/knox/SemPersonaState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CONTAINER_APPS_URGENT_UPDATE:Lcom/samsung/android/knox/SemPersonaState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->$VALUES:[Lcom/samsung/android/knox/SemPersonaState;

    new-instance v0, Lcom/samsung/android/knox/SemPersonaState$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/SemPersonaState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaState;->knox2_0_state_id:I

    iput p3, p0, Lcom/samsung/android/knox/SemPersonaState;->knox2_0_state_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/SemPersonaState;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->$VALUES:[Lcom/samsung/android/knox/SemPersonaState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKnox2_0State()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaState;->knox2_0_state_id:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
