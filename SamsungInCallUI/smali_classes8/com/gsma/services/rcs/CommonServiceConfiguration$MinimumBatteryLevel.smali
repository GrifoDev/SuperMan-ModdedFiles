.class public final enum Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
.super Ljava/lang/Enum;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinimumBatteryLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field public static final enum PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v3, "NONE"

    invoke-direct {v2, v3, v1, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    new-instance v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v3, "PERCENT_5"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v5, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    new-instance v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v3, "PERCENT_10"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v6, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    new-instance v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const-string v3, "PERCENT_20"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v7, v4}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_5:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v3, v2, v5

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_10:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v3, v2, v6

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->PERCENT_20:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    aput-object v3, v2, v7

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->toInt()I

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

    iput p3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mCode:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$1;->$SwitchMap$com$gsma$services$rcs$CommonServiceConfiguration$MinimumBatteryLevel:[I

    invoke-virtual {p0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "PERCENT_5"

    goto :goto_0

    :pswitch_2
    const-string v0, "PERCENT_10"

    goto :goto_0

    :pswitch_3
    const-string v0, "PERCENT_20"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
