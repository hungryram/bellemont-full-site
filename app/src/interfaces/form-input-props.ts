import React from "react";

export interface FormInputProps {
  name: string;
  placeholder: string;
  onChange: (
    event: React.ChangeEvent<
      HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement
    >
  ) => void;
  value: string;
  error?: boolean;
  required?: boolean;
  className?: string;
  type?: string;
}
