.class public interface abstract Lcom/samsung/android/vr/IGearVrManagerLocal;
.super Ljava/lang/Object;
.source "IGearVrManagerLocal.java"


# static fields
.field public static final TYPE_GET_THREAD_CONTAINS:I = 0x5

.field public static final TYPE_GET_THREAD_ENDS_WITH:I = 0x4

.field public static final TYPE_GET_THREAD_EQUALS:I = 0x1

.field public static final TYPE_GET_THREAD_EQUALS_IGNORE_CASE:I = 0x2

.field public static final TYPE_GET_THREAD_STARTS_WITH:I = 0x3

.field public static final VR_LOCAL_API_VERSION_CODE:I = 0x2


# virtual methods
.method public abstract getThreadId(ILjava/lang/String;I)[I
.end method

.method public abstract getVrRecentsMode()I
.end method

.method public abstract isVrMode()Z
.end method

.method public abstract readSysNode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeSysNode(Ljava/lang/String;)Z
.end method

.method public abstract setHomeKeyBlocked(Z)V
.end method

.method public abstract setOverlayRestriction(Z[Ljava/lang/String;I)V
.end method

.method public abstract setPermissions(Ljava/lang/String;III)I
.end method

.method public abstract setReadyForVrMode(Z)V
.end method

.method public abstract setSystemMouseControlType(I)V
.end method

.method public abstract setSystemMouseShowMouseEnabled(Z)V
.end method

.method public abstract setThreadAffinity(I[I)I
.end method

.method public abstract setThreadGroup(II)Z
.end method

.method public abstract setThreadScheduler(III)Z
.end method

.method public abstract setVrMode(Z)V
.end method

.method public abstract writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method
