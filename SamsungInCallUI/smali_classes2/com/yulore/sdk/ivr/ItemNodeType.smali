.class public final enum Lcom/yulore/sdk/ivr/ItemNodeType;
.super Ljava/lang/Enum;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yulore/sdk/ivr/ItemNodeType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulore/sdk/ivr/ItemNodeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum b:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum c:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum d:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum e:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum f:Lcom/yulore/sdk/ivr/ItemNodeType;

.field private static final synthetic i:[Lcom/yulore/sdk/ivr/ItemNodeType;


# instance fields
.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "LEAF_NODE"

    const/4 v2, 0x0

    const-string v3, "leaf node"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->a:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "NONELEAF_NODE"

    const-string v2, "non-leaf node"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->b:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "REPEAT_NODE"

    const-string v2, "repeat node"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->c:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "RETURN_UP_NODE"

    const-string v2, "return to previous menu"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->d:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "RETURN_TOP_NODE"

    const-string v2, "return to main menu"

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->e:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "UNKOWN_NODE"

    const-string v2, "unkown node"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->f:Lcom/yulore/sdk/ivr/ItemNodeType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yulore/sdk/ivr/ItemNodeType;

    const/4 v1, 0x0

    sget-object v2, Lcom/yulore/sdk/ivr/ItemNodeType;->a:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->b:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->c:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->d:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->e:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->f:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->i:[Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType$1;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/ItemNodeType$1;-><init>()V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->g:Ljava/lang/String;

    iput p4, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 1

    const-class v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    return-object v0
.end method

.method public static values()[Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 1

    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->i:[Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v0}, [Lcom/yulore/sdk/ivr/ItemNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulore/sdk/ivr/ItemNodeType;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->h:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->g:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/ItemNodeType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
