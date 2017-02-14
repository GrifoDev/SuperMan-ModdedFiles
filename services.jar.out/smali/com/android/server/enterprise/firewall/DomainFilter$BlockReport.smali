.class Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockReport"
.end annotation


# instance fields
.field private mTimeStamp:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isEqual(Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_5
    return v2

    :cond_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :cond_a
    return v2

    :cond_b
    return v2

    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_f
    return v2
.end method
