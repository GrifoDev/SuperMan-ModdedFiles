.class public final enum Lcom/yulore/sdk/ivr/ItemNodeType;
.super Ljava/lang/Enum;
.source "ItemNodeType.java"

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
.field private static final synthetic $VALUES:[Lcom/yulore/sdk/ivr/ItemNodeType;

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

.field public static final enum LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum NONELEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum REPEAT_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum RETURN_TOP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum RETURN_UP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

.field public static final enum UNKOWN_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;


# instance fields
.field private nodeType:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "LEAF_NODE"

    const/4 v2, 0x0

    const-string v3, "leaf node"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "NONELEAF_NODE"

    const-string v2, "non-leaf node"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->NONELEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "REPEAT_NODE"

    const-string v2, "repeat node"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->REPEAT_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    .line 18
    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "RETURN_UP_NODE"

    const-string v2, "return to previous menu"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->RETURN_UP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "RETURN_TOP_NODE"

    const-string v2, "return to main menu"

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->RETURN_TOP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    const-string v1, "UNKOWN_NODE"

    const-string v2, "unkown node"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yulore/sdk/ivr/ItemNodeType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->UNKOWN_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yulore/sdk/ivr/ItemNodeType;

    const/4 v1, 0x0

    sget-object v2, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->NONELEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->REPEAT_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->RETURN_UP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->RETURN_TOP_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yulore/sdk/ivr/ItemNodeType;->UNKOWN_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->$VALUES:[Lcom/yulore/sdk/ivr/ItemNodeType;

    .line 59
    new-instance v0, Lcom/yulore/sdk/ivr/ItemNodeType$1;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/ItemNodeType$1;-><init>()V

    sput-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 1
    .param p3, "src"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->nodeType:Ljava/lang/String;

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->value:I

    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "nodeType"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->nodeType:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->value:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    return-object v0
.end method

.method public static values()[Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/yulore/sdk/ivr/ItemNodeType;->$VALUES:[Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v0}, [Lcom/yulore/sdk/ivr/ItemNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yulore/sdk/ivr/ItemNodeType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getNodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->nodeType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->value:I

    return v0
.end method

.method public setNodeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeType"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->nodeType:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->value:I

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/yulore/sdk/ivr/ItemNodeType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->nodeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/yulore/sdk/ivr/ItemNodeType;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
