.class public final Lrx/observers/Subscribers;
.super Ljava/lang/Object;
.source "Subscribers.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final create(Lrx/functions/Action1;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    new-instance v0, Lrx/observers/Subscribers$2;

    invoke-direct {v0, p0}, Lrx/observers/Subscribers$2;-><init>(Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static final create(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-instance v0, Lrx/observers/Subscribers$3;

    invoke-direct {v0, p1, p0}, Lrx/observers/Subscribers$3;-><init>(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static final create(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscriber;
    .locals 2
    .param p2, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    if-nez p1, :cond_1

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    if-nez p2, :cond_2

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    new-instance v0, Lrx/observers/Subscribers$4;

    invoke-direct {v0, p2, p1, p0}, Lrx/observers/Subscribers$4;-><init>(Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-object v0
.end method

.method public static empty()Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lrx/observers/Observers;->empty()Lrx/Observer;

    move-result-object v0

    invoke-static {v0}, Lrx/observers/Subscribers;->from(Lrx/Observer;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lrx/Observer;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    new-instance v0, Lrx/observers/Subscribers$1;

    invoke-direct {v0, p0}, Lrx/observers/Subscribers$1;-><init>(Lrx/Observer;)V

    return-object v0
.end method
