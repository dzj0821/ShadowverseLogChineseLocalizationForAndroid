.class final Lrx/android/lifecycle/LifecycleObservable$5;
.super Ljava/lang/Object;
.source "LifecycleObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/lifecycle/LifecycleObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/android/lifecycle/LifecycleEvent;",
        "Lrx/android/lifecycle/LifecycleEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    check-cast p1, Lrx/android/lifecycle/LifecycleEvent;

    invoke-virtual {p0, p1}, Lrx/android/lifecycle/LifecycleObservable$5;->call(Lrx/android/lifecycle/LifecycleEvent;)Lrx/android/lifecycle/LifecycleEvent;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/android/lifecycle/LifecycleEvent;)Lrx/android/lifecycle/LifecycleEvent;
    .locals 3
    .param p1, "lastEvent"    # Lrx/android/lifecycle/LifecycleEvent;

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot bind to null LifecycleEvent."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    sget-object v0, Lrx/android/lifecycle/LifecycleObservable$6;->$SwitchMap$rx$android$lifecycle$LifecycleEvent:[I

    invoke-virtual {p1}, Lrx/android/lifecycle/LifecycleEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to LifecycleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :pswitch_0
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DETACH:Lrx/android/lifecycle/LifecycleEvent;

    .line 186
    :goto_0
    return-object v0

    .line 172
    :pswitch_1
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 174
    :pswitch_2
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 176
    :pswitch_3
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 178
    :pswitch_4
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->PAUSE:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 180
    :pswitch_5
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->STOP:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 182
    :pswitch_6
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY_VIEW:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 184
    :pswitch_7
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DESTROY:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 186
    :pswitch_8
    sget-object v0, Lrx/android/lifecycle/LifecycleEvent;->DETACH:Lrx/android/lifecycle/LifecycleEvent;

    goto :goto_0

    .line 188
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot bind to Fragment lifecycle when outside of it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
