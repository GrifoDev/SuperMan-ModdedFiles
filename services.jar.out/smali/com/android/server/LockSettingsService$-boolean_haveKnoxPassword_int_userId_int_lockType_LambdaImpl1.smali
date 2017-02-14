.class final synthetic Lcom/android/server/LockSettingsService$-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-boolean_haveKnoxPassword_int_userId_int_lockType_LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaInfo;

    invoke-static {p1}, Lcom/android/server/LockSettingsService;->-com_android_server_LockSettingsService_lambda$2(Lcom/samsung/android/knox/SemPersonaInfo;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
