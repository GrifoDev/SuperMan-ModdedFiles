.class public Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;
.super Ljava/lang/Object;


# instance fields
.field protected com:Ljava/lang/String;

.field protected depart:Ljava/lang/String;

.field protected pst:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->com:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->pst:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->depart:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompany()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->com:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->depart:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->pst:Ljava/lang/String;

    return-object v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->com:Ljava/lang/String;

    return-void
.end method

.method public setDepartment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->depart:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->pst:Ljava/lang/String;

    return-void
.end method
