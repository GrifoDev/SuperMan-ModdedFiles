.class public Landroid/text/LoginFilter$UsernameFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGMail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x2e

    if-ne v0, p1, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
