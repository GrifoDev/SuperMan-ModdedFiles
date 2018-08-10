.class public final Lcom/airbnb/lottie/model/JsonCompositionLoader;
.super Lcom/airbnb/lottie/model/CompositionLoader;
.source "JsonCompositionLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/CompositionLoader",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final loadedListener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

.field private final res:Landroid/content/res/Resources;


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/JsonCompositionLoader;->res:Landroid/content/res/Resources;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/JsonCompositionLoader;->doInBackground([Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/JsonCompositionLoader;->loadedListener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/JsonCompositionLoader;->onPostExecute(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
