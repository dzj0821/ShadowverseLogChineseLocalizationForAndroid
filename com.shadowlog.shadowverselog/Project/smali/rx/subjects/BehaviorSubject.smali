.class public final Lrx/subjects/BehaviorSubject;
.super Lrx/subjects/Subject;
.source "BehaviorSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 115
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    .line 119
    iput-object p2, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 120
    return-void
.end method

.method public static create()Lrx/subjects/BehaviorSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;)Lrx/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;
    .locals 2
    .param p1, "hasDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 99
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p0}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->set(Ljava/lang/Object;)V

    .line 102
    :cond_0
    new-instance v1, Lrx/subjects/BehaviorSubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/BehaviorSubject$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 110
    iget-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 111
    new-instance v1, Lrx/subjects/BehaviorSubject;

    invoke-direct {v1, v0, v0}, Lrx/subjects/BehaviorSubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 7

    .prologue
    .line 124
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v3}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "last":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v3, v3, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v3, :cond_1

    .line 126
    :cond_0
    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "n":Ljava/lang/Object;
    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v3, v2}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 128
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v2, v6}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    const/4 v6, 0x0

    .line 135
    iget-object v5, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v5}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v3

    .line 136
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v5, v5, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v5, :cond_3

    .line 137
    :cond_0
    iget-object v5, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    .line 138
    .local v4, "n":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 139
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v5, v4}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v0, v7, v5

    .line 141
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_0
    iget-object v9, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v9, v9, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v4, v9}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e2":Ljava/lang/Throwable;
    if-nez v2, :cond_1

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v1    # "e2":Ljava/lang/Throwable;
    :cond_2
    if-eqz v2, :cond_3

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 152
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v5}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 158
    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "n":Ljava/lang/Object;
    :cond_3
    return-void

    .line 154
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v4    # "n":Ljava/lang/Object;
    :cond_4
    new-instance v5, Lrx/exceptions/CompositeException;

    const-string v6, "Errors while emitting AsyncSubject.onError"

    invoke-direct {v5, v6, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v5
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v3}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, "last":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v3, v3, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v3, :cond_1

    .line 164
    :cond_0
    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 165
    .local v2, "n":Ljava/lang/Object;
    iget-object v3, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v3, v2}, Lrx/subjects/SubjectSubscriptionManager;->next(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 166
    .local v0, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, v2, v6}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
