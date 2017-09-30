.class public Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;
.super Ljava/lang/Object;


# instance fields
.field protected cp_custm_txt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpCustomText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;->cp_custm_txt:Ljava/lang/String;

    return-object v0
.end method

.method public setCpCustomText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;->cp_custm_txt:Ljava/lang/String;

    return-void
.end method
