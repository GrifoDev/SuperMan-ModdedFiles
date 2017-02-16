.class public final Ljava/net/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private password:[C

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    .line 55
    return-void
.end method


# virtual methods
.method public getPassword()[C
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    return-object v0
.end method
