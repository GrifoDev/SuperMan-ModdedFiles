.class public Ljavax/security/auth/callback/PasswordCallback;
.super Ljava/lang/Object;
.source "PasswordCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f7780e27139c5e6L


# instance fields
.field private echoOn:Z

.field private inputPassword:[C

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    iput-boolean p2, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 3

    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPassword()[C
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isEchoOn()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    return v0
.end method

.method public setPassword([C)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method
