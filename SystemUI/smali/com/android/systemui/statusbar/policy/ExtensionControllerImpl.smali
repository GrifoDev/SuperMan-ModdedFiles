.class public Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;,
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;,
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;)V

    return-object v0
.end method
