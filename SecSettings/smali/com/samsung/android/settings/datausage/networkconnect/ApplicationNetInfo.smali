.class public Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
.super Ljava/lang/Object;
.source "ApplicationNetInfo.java"


# instance fields
.field private dataTotal:J

.field private isDataAllowed:Z

.field private isWarningAllowed:Z

.field private isWlanAllowed:Z

.field private label:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private uid:I

.field private uids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wlanTotal:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->label:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uid:I

    iput-object p4, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uids:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed:Z

    iput-boolean p6, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed:Z

    iput-boolean p7, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uid:I

    return v0
.end method

.method public getUids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDataAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed:Z

    return v0
.end method

.method public isWarningAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    return v0
.end method

.method public isWlanAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed:Z

    return v0
.end method

.method public setDataAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed:Z

    return-void
.end method

.method public setDataTotal(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->dataTotal:J

    return-void
.end method

.method public setWarningAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    return-void
.end method

.method public setWlanAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed:Z

    return-void
.end method

.method public setWlanTotal(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->wlanTotal:J

    return-void
.end method
