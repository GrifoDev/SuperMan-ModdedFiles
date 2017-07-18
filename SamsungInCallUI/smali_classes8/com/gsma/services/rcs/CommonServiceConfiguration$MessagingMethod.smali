.class public final enum Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
.super Ljava/lang/Enum;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessagingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field public static final enum AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field public static final enum NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field public static final enum RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    const-string v3, "AUTOMATIC"

    invoke-direct {v2, v3, v1, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    new-instance v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    const-string v3, "RCS"

    invoke-direct {v2, v3, v4, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    new-instance v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    const-string v3, "NON_RCS"

    invoke-direct {v2, v3, v5, v5}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    aput-object v3, v2, v4

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    aput-object v3, v2, v5

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mCode:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MessagingMethod:[I

    invoke-virtual {p0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "AUTOMATIC"

    goto :goto_0

    :pswitch_1
    const-string v0, "RCS"

    goto :goto_0

    :pswitch_2
    const-string v0, "NON_RCS"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
