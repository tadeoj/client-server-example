package com.github.tadeoj.client.example.client.event;

import org.gwtproject.event.shared.Event;

public class ExitEvent extends Event<ExitEvent.StatusChangeHandler> {

    public static Type<ExitEvent.StatusChangeHandler> TYPE = new Type<>();

    public ExitEvent( ) {
        super();
    }

    @Override
    public Type<ExitEvent.StatusChangeHandler> getAssociatedType() {
        return TYPE;
    }

    @Override
    protected void dispatch(ExitEvent.StatusChangeHandler statusChangeHandler) {
        statusChangeHandler.onStatusChange(this);
    }

    public interface StatusChangeHandler {
        void onStatusChange(ExitEvent event);
    }

}
