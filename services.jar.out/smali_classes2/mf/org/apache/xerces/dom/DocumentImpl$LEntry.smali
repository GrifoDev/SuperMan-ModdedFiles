.class Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;
.super Ljava/lang/Object;
.source "DocumentImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/DocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LEntry"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74f1dae6138f9fffL


# instance fields
.field listener:Lmf/org/w3c/dom/events/EventListener;

.field final synthetic this$0:Lmf/org/apache/xerces/dom/DocumentImpl;

.field type:Ljava/lang/String;

.field useCapture:Z


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->this$0:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lmf/org/w3c/dom/events/EventListener;

    iput-boolean p4, p0, Lmf/org/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    return-void
.end method
