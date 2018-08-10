.class public Lcom/samsung/android/authenticator/SemAuthenticatorDataManager;
.super Ljava/lang/Object;
.source "SemAuthenticatorDataManager.java"


# static fields
.field private static final PERMISSION_REQUEST_AUTHNR_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeFile(Ljava/lang/String;[B)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->writeFile(Ljava/lang/String;[B)Z

    move-result v1

    return v1
.end method
