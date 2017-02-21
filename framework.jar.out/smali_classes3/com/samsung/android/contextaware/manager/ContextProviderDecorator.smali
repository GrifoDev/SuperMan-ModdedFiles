.class abstract Lcom/samsung/android/contextaware/manager/ContextProviderDecorator;
.super Lcom/samsung/android/contextaware/manager/ContextComponent;
.source "ContextProviderDecorator.java"


# instance fields
.field protected final mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextProviderDecorator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    return-void
.end method


# virtual methods
.method public final getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProviderDecorator;->mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method public abstract start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method public abstract stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
.end method
