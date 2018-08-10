.class public interface abstract Lcom/android/server/notification/GroupHelper$Callback;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Callback"
.end annotation


# virtual methods
.method public abstract addAutoGroup(Ljava/lang/String;)V
.end method

.method public abstract addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeAutoGroup(Ljava/lang/String;)V
.end method

.method public abstract removeAutoGroupSummary(ILjava/lang/String;)V
.end method
