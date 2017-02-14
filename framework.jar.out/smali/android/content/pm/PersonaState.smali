.class public final enum Landroid/content/pm/PersonaState;
.super Ljava/lang/Enum;
.source "PersonaState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PersonaState$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/pm/PersonaState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/pm/PersonaState;

.field public static final enum ACTIVE:Landroid/content/pm/PersonaState;

.field public static final enum ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

.field public static final enum ADMIN_LOCKED:Landroid/content/pm/PersonaState;

.field public static final enum CONTAINER_APPS_URGENT_UPDATE:Landroid/content/pm/PersonaState;

.field public static final enum CREATING:Landroid/content/pm/PersonaState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELETING:Landroid/content/pm/PersonaState;

.field public static final enum INVALID:Landroid/content/pm/PersonaState;

.field public static final enum LICENSE_LOCKED:Landroid/content/pm/PersonaState;

.field public static final enum LOCKED:Landroid/content/pm/PersonaState;

.field public static final enum SUPER_LOCKED:Landroid/content/pm/PersonaState;

.field public static final enum TERMINUS:Landroid/content/pm/PersonaState;

.field public static final enum TIMA_COMPROMISED:Landroid/content/pm/PersonaState;


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

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v5, v4}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->INVALID:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "CREATING"

    invoke-direct {v0, v1, v6, v6}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v7, v5}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "LOCKED"

    invoke-direct {v0, v1, v8, v7}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "SUPER_LOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "LICENSE_LOCKED"

    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "ADMIN_LOCKED"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "ADMIN_LICENSE_LOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "TERMINUS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->TERMINUS:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "DELETING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v8}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "TIMA_COMPROMISED"

    const/16 v2, 0xa

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState;

    const-string/jumbo v1, "CONTAINER_APPS_URGENT_UPDATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Landroid/content/pm/PersonaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/content/pm/PersonaState;->CONTAINER_APPS_URGENT_UPDATE:Landroid/content/pm/PersonaState;

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/content/pm/PersonaState;

    sget-object v1, Landroid/content/pm/PersonaState;->INVALID:Landroid/content/pm/PersonaState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    aput-object v1, v0, v7

    sget-object v1, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    aput-object v1, v0, v8

    sget-object v1, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaState;->ADMIN_LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaState;->TERMINUS:Landroid/content/pm/PersonaState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/pm/PersonaState;->CONTAINER_APPS_URGENT_UPDATE:Landroid/content/pm/PersonaState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/pm/PersonaState;->$VALUES:[Landroid/content/pm/PersonaState;

    new-instance v0, Landroid/content/pm/PersonaState$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaState$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PersonaState;->knox2_0_state_id:I

    iput p3, p0, Landroid/content/pm/PersonaState;->knox2_0_state_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaState;
    .locals 1

    const-class v0, Landroid/content/pm/PersonaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaState;

    return-object v0
.end method

.method public static values()[Landroid/content/pm/PersonaState;
    .locals 1

    sget-object v0, Landroid/content/pm/PersonaState;->$VALUES:[Landroid/content/pm/PersonaState;

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

    iget v0, p0, Landroid/content/pm/PersonaState;->knox2_0_state_id:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
