.class public Lcom/samsung/android/sdk/ssf/contact/io/UsePresenceRequestInfo;
.super Ljava/lang/Object;


# instance fields
.field protected prscon:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/UsePresenceRequestInfo;->prscon:I

    return-void
.end method


# virtual methods
.method public getPresence()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/UsePresenceRequestInfo;->prscon:I

    return v0
.end method
