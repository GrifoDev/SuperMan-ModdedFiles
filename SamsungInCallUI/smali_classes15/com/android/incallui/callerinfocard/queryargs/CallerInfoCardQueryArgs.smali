.class public abstract Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
.super Ljava/lang/Object;
.source "CallerInfoCardQueryArgs.java"


# static fields
.field protected static final EVENT_MESSAGE_UPDATED:I = 0x0

.field protected static final EVENT_MESSAGE_UPDATED_DELAY:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "CallerInfoCardQueryArgs"


# instance fields
.field protected mCookie:Ljava/lang/Object;

.field protected mOrderBy:Ljava/lang/String;

.field protected mProjection:[Ljava/lang/String;

.field protected mSelection:Ljava/lang/String;

.field protected mSelectionArgs:[Ljava/lang/String;

.field protected mToken:I

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mToken:I

    .line 39
    iput-object p2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mCookie:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method protected getPeriod(J)Ljava/lang/String;
    .locals 7
    .param p1, "day"    # J

    .prologue
    const-wide/16 v4, 0x3c

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    mul-long/2addr v2, p1

    mul-long/2addr v2, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mToken:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "token"

    iget v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mToken:I

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cookie"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mCookie:Ljava/lang/Object;

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mUri:Landroid/net/Uri;

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "projection"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mProjection:[Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "selection"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelection:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "selectionArgs"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "orderBy"

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mOrderBy:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
